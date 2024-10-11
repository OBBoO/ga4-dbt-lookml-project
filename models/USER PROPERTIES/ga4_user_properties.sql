{{ config(materialized='table') }}

with prep as (
select 
    row_number() over(partition by user_pseudo_id, event_timestamp, event_name) as dedup_id,
    *
from
    `{{ source('ga4_raw', 'events_*') }}`
where
  _table_suffix = format_date('%Y%m%d',date_sub(current_date(), interval 3 day)))

select 
    user_pseudo_id,
    event_timestamp,
    event_name,
    user_properties.key,
    user_properties.value.string_value,
    user_properties.value.int_value,
    user_properties.value.float_value,
    user_properties.value.double_value,
    user_properties.value.set_timestamp_micros,
    concat(user_pseudo_id,event_timestamp,event_name,dedup_id) as join_key
from
    prep,
    unnest(user_properties) as user_properties