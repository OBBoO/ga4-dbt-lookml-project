{{ config(materialized='view') }}

-- This model cleans and flattens raw GA4 events data.

SELECT
  event_date,
  TIMESTAMP_MICROS(event_timestamp) AS event_timestamp,
  event_name,
  user_pseudo_id,
  -- Flatten nested fields
  (SELECT value.string_value FROM UNNEST(event_params) WHERE key = 'page_location') AS page_location,
  (SELECT value.int_value FROM UNNEST(event_params) WHERE key = 'engagement_time_msec') AS engagement_time_msec,
  geo.country,
  geo.region,
  geo.city,
  device.category AS device_category,
  device.operating_system AS operating_system,
  device.language AS browser,
  traffic_source.name AS traffic_source_name,
  traffic_source.medium AS traffic_medium,
  traffic_source.source AS traffic_source
FROM
  `{{ source('ga4_raw', 'events_*') }}`
