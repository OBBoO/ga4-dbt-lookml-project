{{ config(materialized='view') }}

-- This model aggregates events into sessions.

WITH sessions AS (
  SELECT
    user_pseudo_id,
    MIN(event_timestamp) AS session_start_time,
    MAX(event_timestamp) AS session_end_time,
    COUNTIF(event_name = 'page_view') AS page_views,
    SUM(engagement_time_msec) AS total_engagement_time_msec
  FROM
    {{ ref('stg_ga4_events') }}
  GROUP BY
    user_pseudo_id
)

-- Join with user attributes
SELECT
  s.*,
  u.country,
  u.region,
  u.city,
  u.device_category,
  u.operating_system,
  u.browser
FROM
  sessions s
LEFT JOIN (
  SELECT
    user_pseudo_id,
    ANY_VALUE(country) AS country,
    ANY_VALUE(region) AS region,
    ANY_VALUE(city) AS city,
    ANY_VALUE(device_category) AS device_category,
    ANY_VALUE(operating_system) AS operating_system,
    ANY_VALUE(browser) AS browser
  FROM
    {{ ref('stg_ga4_events') }}
  GROUP BY
    user_pseudo_id
) u ON s.user_pseudo_id = u.user_pseudo_id
