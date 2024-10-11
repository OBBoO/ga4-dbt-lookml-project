{{ config(materialized='table') }}

-- This model aggregates events into sessions.

with prep as (
select
    row_number() over(partition by user_pseudo_id, event_timestamp, event_name) as dedup_id,
    *
from

 `{{ source('ga4_raw', 'events_*') }}`
 
),

flatten as (
select
    user_pseudo_id,
    case when event_params.key = 'ga_session_id' then event_params.value.int_value else null end as ga_session_id,
    event_timestamp,
    event_name,
    event_params.key,
    event_params.value.string_value,
    event_params.value.int_value,
    event_params.value.float_value,
    event_params.value.double_value,
    dedup_id
from
    prep,
    unnest(event_params) as event_params)
        
select
    max(ga_session_id) over (partition by event_timestamp,event_name rows between unbounded preceding and unbounded following) as ga_session_id,
    concat(user_pseudo_id,event_timestamp,event_name,dedup_id) as join_key,
    * except(ga_session_id)
from flatten