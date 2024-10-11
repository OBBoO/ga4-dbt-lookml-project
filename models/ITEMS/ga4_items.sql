{{ config(materialized='table') }}

-- This model creates a user behavior mart for analytics.

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
    items.item_id,
    items.item_name,
    items.item_brand,
    items.item_variant,
    items.item_category,
    items.item_category2,
    items.item_category3,
    items.item_category4,
    items.item_category5,
    items.price_in_usd,
    items.price,
    items.quantity,
    items.item_revenue_in_usd,
    items.item_revenue,
    items.item_refund_in_usd,
    items.item_refund,
    items.coupon,
    items.affiliation,
    items.location_id,
    items.item_list_id,
    items.item_list_name,
    items.item_list_index,
    items.promotion_id,
    items.promotion_name,
    items.creative_name,
    items.creative_slot,
    concat(user_pseudo_id,event_timestamp,event_name,dedup_id) as join_key
from
    prep,
    unnest(items) as items