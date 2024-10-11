{{ config(materialized='table') }}

-- This model cleans and flattens raw GA4 events data.

select
    (select value.int_value from unnest(event_params) where key = 'ga_session_id') as session_id,
    event_date,
    event_timestamp,
    event_name,
    event_previous_timestamp,
    event_value_in_usd,
    event_bundle_sequence_id,
    event_server_timestamp_offset,
    user_id,
    user_pseudo_id,
    user_first_touch_timestamp,
    privacy_info.analytics_storage as privacy_info_analytics_storage,
    privacy_info.ads_storage as privacy_info_ads_storage,
    privacy_info.uses_transient_token as privacy_info_uses_transient_token,
    user_ltv.revenue as user_ltv_revenue,
    user_ltv.currency as user_ltv_currency,
    device.category as device_category,
    device.mobile_brand_name as device_mobile_brand_name,
    device.mobile_model_name as device_mobile_model_name,
    device.mobile_marketing_name as device_mobile_marketing_name,
    device.mobile_os_hardware_model as device_mobile_os_hardware_model,
    device.operating_system as device_operating_system,
    device.operating_system_version as device_operating_system_version,
    device.vendor_id as device_vendor_id,
    device.advertising_id as device_advertising_id,
    device.language as device_language,
    device.is_limited_ad_tracking as device_is_limited_ad_tracking,
    device.time_zone_offset_seconds as device_time_zone_offset_seconds,
    device.browser as device_browser,
    device.browser_version as device_browser_version,
    device.web_info.browser as device_web_info_browser,
    device.web_info.browser_version as device_web_info_browser_version,
    device.web_info.hostname as device_web_info_hostname,
    geo.continent as geo_continent,
    geo.country as geo_country,
    geo.region as geo_region,
    geo.city as geo_city,
    geo.sub_continent as geo_sub_continent,
    geo.metro as geo_metro,
    app_info.id as app_info_id,
    app_info.version as app_info_version,
    app_info.install_store as app_info_install_store,
    app_info.firebase_app_id as app_info_firebase_app_id,
    app_info.install_source as app_info_install_source,
    traffic_source.name as traffic_source_name,
    traffic_source.medium as traffic_source_medium,
    traffic_source.source as traffic_source_source,
    stream_id,
    platform,
    event_dimensions.hostname as event_dimensions_hostname,
    ecommerce.total_item_quantity as ecommerce_total_item_quantity,
    ecommerce.purchase_revenue_in_usd as ecommerce_purchase_revenue_in_usd,
    ecommerce.purchase_revenue as ecommerce_purchase_revenue,
    ecommerce.refund_value_in_usd as ecommerce_refund_value_in_usd,
    ecommerce.refund_value as ecommerce_refund_value,
    ecommerce.shipping_value_in_usd as ecommerce_shipping_value_in_usd,
    ecommerce.shipping_value as ecommerce_shipping_value,
    ecommerce.tax_value_in_usd as ecommerce_tax_value_in_usd,
    ecommerce.tax_value as ecommerce_tax_value,
    ecommerce.unique_items as ecommerce_unique_items,
    ecommerce.transaction_id as ecommerce_transaction_id,
    collected_traffic_source.manual_campaign_id as collected_traffic_source_manual_campaign_id,
    collected_traffic_source.manual_campaign_name as collected_traffic_source_manual_campaign_name,
    collected_traffic_source.manual_source as collected_traffic_source_manual_source,
    collected_traffic_source.manual_medium as collected_traffic_source_manual_medium,
    collected_traffic_source.manual_term as collected_traffic_source_manual_term,
    collected_traffic_source.manual_content as collected_traffic_source_manual_content,
    collected_traffic_source.gclid as collected_traffic_source_gclid,
    collected_traffic_source.dclid as collected_traffic_source_dclid,
    collected_traffic_source.srsltid as collected_traffic_source_srsltid,
    is_active_user,
    concat(user_pseudo_id,event_timestamp,event_name,row_number() over(partition by user_pseudo_id, event_timestamp, event_name)) as join_key

FROM

  `{{ source('ga4_raw', 'events_*') }}`
