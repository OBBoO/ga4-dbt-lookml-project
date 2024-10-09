{{ config(materialized='table') }}

-- This model creates a user behavior mart for analytics.

SELECT
  user_pseudo_id,
  COUNT(*) AS total_sessions,
  SUM(page_views) AS total_page_views,
  SUM(total_engagement_time_msec) / 1000 AS total_engagement_time_sec,
  AVG(total_engagement_time_msec) / 1000 AS avg_engagement_time_sec,
  country,
  region,
  city,
  device_category,
  operating_system,
  browser
FROM
  {{ ref('core_ga4_sessions') }}
GROUP BY
  user_pseudo_id,
  country,
  region,
  city,
  device_category,
  operating_system,
  browser
