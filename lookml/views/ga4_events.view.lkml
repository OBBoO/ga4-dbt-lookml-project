view: ga4_events {
  sql_table_name: converteo-training-looker.ga4_dbt_lkml_project.ga4_events ;;

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id ;;
    description: "Session ID extracted from event parameters."
  }

  dimension: event_date {
    type: string
    sql: ${TABLE}.event_date ;;
    description: "Date of the event."
  }

  dimension: event_timestamp {
    type: number
    sql: ${TABLE}.event_timestamp ;;
    description: "Timestamp of the event."
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
    description: "Name of the event."
  }

  dimension: event_previous_timestamp {
    type: number
    sql: ${TABLE}.event_previous_timestamp ;;
    description: "Timestamp of the previous event."
  }

  dimension: event_value_in_usd {
    type: number
    sql: ${TABLE}.event_value_in_usd ;;
    description: "Event value in USD."
  }

  dimension: event_bundle_sequence_id {
    type: number
    sql: ${TABLE}.event_bundle_sequence_id ;;
    description: "Bundle sequence ID of the event."
  }

  dimension: event_server_timestamp_offset {
    type: number
    sql: ${TABLE}.event_server_timestamp_offset ;;
    description: "Server timestamp offset for the event."
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
    description: "User ID associated with the event."
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
    description: "Pseudo user ID associated with the event."
  }

  dimension: user_first_touch_timestamp {
    type: number
    sql: ${TABLE}.user_first_touch_timestamp ;;
    description: "Timestamp of the user's first touchpoint."
  }

  dimension: privacy_info_analytics_storage {
    type: number
    sql: ${TABLE}.privacy_info_analytics_storage ;;
    description: "Information on the user's consent for analytics storage."
  }

  dimension: privacy_info_ads_storage {
    type: number
    sql: ${TABLE}.privacy_info_ads_storage ;;
    description: "Information on the user's consent for ads storage."
  }

  dimension: privacy_info_uses_transient_token {
    type: string
    sql: ${TABLE}.privacy_info_uses_transient_token ;;
    description: "Whether the user uses a transient token."
  }

  dimension: user_ltv_revenue {
    type: number
    sql: ${TABLE}.user_ltv_revenue ;;
    description: "Lifetime value revenue for the user."
  }

  dimension: user_ltv_currency {
    type: string
    sql: ${TABLE}.user_ltv_currency ;;
    description: "Currency used for the lifetime value revenue."
  }

  dimension: device_category {
    type: string
    sql: ${TABLE}.device_category ;;
    description: "Category of the device used for the event."
  }

  dimension: device_mobile_brand_name {
    type: string
    sql: ${TABLE}.device_mobile_brand_name ;;
    description: "Brand name of the mobile device."
  }

  dimension: device_mobile_model_name {
    type: string
    sql: ${TABLE}.device_mobile_model_name ;;
    description: "Model name of the mobile device."
  }

  dimension: device_mobile_marketing_name {
    type: string
    sql: ${TABLE}.device_mobile_marketing_name ;;
    description: "Marketing name of the mobile device."
  }

  dimension: device_mobile_os_hardware_model {
    type: number
    sql: ${TABLE}.device_mobile_os_hardware_model ;;
    description: "OS hardware model of the mobile device."
  }

  dimension: device_operating_system {
    type: string
    sql: ${TABLE}.device_operating_system ;;
    description: "Operating system used on the device."
  }

  dimension: device_operating_system_version {
    type: string
    sql: ${TABLE}.device_operating_system_version ;;
    description: "Version of the operating system used on the device."
  }

  dimension: device_vendor_id {
    type: number
    sql: ${TABLE}.device_vendor_id ;;
    description: "Vendor ID of the device."
  }

  dimension: device_advertising_id {
    type: number
    sql: ${TABLE}.device_advertising_id ;;
    description: "Advertising ID of the device."
  }

  dimension: device_language {
    type: string
    sql: ${TABLE}.device_language ;;
    description: "Language set on the device."
  }

  dimension: device_is_limited_ad_tracking {
    type: string
    sql: ${TABLE}.device_is_limited_ad_tracking ;;
    description: "Whether ad tracking is limited on the device."
  }

  dimension: device_time_zone_offset_seconds {
    type: number
    sql: ${TABLE}.device_time_zone_offset_seconds ;;
    description: "Time zone offset in seconds for the device."
  }

  dimension: device_web_info_browser {
    type: string
    sql: ${TABLE}.device_web_info_browser ;;
    description: "Browser information for the web device."
  }

  dimension: device_web_info_browser_version {
    type: string
    sql: ${TABLE}.device_web_info_browser_version ;;
    description: "Version of the web browser."
  }

  dimension: geo_continent {
    type: string
    sql: ${TABLE}.geo_continent ;;
    description: "Continent where the event took place."
  }

  dimension: geo_country {
    type: string
    sql: ${TABLE}.geo_country ;;
    description: "Country where the event took place."
  }

  dimension: geo_region {
    type: string
    sql: ${TABLE}.geo_region ;;
    description: "Region where the event took place."
  }

  dimension: geo_city {
    type: string
    sql: ${TABLE}.geo_city ;;
    description: "City where the event took place."
  }

  dimension: geo_sub_continent {
    type: string
    sql: ${TABLE}.geo_sub_continent ;;
    description: "Sub-continent where the event took place."
  }

  dimension: geo_metro {
    type: string
    sql: ${TABLE}.geo_metro ;;
    description: "Metro area where the event took place."
  }

  dimension: app_info_id {
    type: string
    sql: ${TABLE}.app_info_id ;;
    description: "App ID associated with the event."
  }

  dimension: app_info_version {
    type: string
    sql: ${TABLE}.app_info_version ;;
    description: "Version of the app associated with the event."
  }

  dimension: app_info_install_store {
    type: string
    sql: ${TABLE}.app_info_install_store ;;
    description: "Install store used for the app."
  }

  dimension: app_info_firebase_app_id {
    type: string
    sql: ${TABLE}.app_info_firebase_app_id ;;
    description: "Firebase App ID for the event."
  }

  dimension: app_info_install_source {
    type: string
    sql: ${TABLE}.app_info_install_source ;;
    description: "Source of the app install."
  }

  dimension: traffic_source_name {
    type: string
    sql: ${TABLE}.traffic_source_name ;;
    description: "Traffic source name for the event."
  }

  dimension: traffic_source_medium {
    type: string
    sql: ${TABLE}.traffic_source_medium ;;
    description: "Traffic source medium for the event."
  }

  dimension: traffic_source_source {
    type: string
    sql: ${TABLE}.traffic_source_source ;;
    description: "Traffic source for the event."
  }

  dimension: stream_id {
    type: number
    sql: ${TABLE}.stream_id ;;
    description: "ID of the stream associated with the event."
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
    description: "Platform where the event occurred."
  }

  dimension: event_dimensions_hostname {
    type: string
    sql: ${TABLE}.event_dimensions_hostname ;;
    description: "Hostname of the event dimensions."
  }

  dimension: ecommerce_total_item_quantity {
    type: number
    sql: ${TABLE}.ecommerce_total_item_quantity ;;
    description: "Total item quantity in the ecommerce transaction."
  }

  dimension: ecommerce_purchase_revenue_in_usd {
    type: number
    sql: ${TABLE}.ecommerce_purchase_revenue_in_usd ;;
    description: "Purchase revenue in USD for ecommerce transactions."
  }

  dimension: ecommerce_purchase_revenue {
    type: number
    sql: ${TABLE}.ecommerce_purchase_revenue ;;
    description: "Purchase revenue for ecommerce transactions."
  }

  dimension: ecommerce_refund_value_in_usd {
    type: number
    sql: ${TABLE}.ecommerce_refund_value_in_usd ;;
    description: "Refund value in USD for ecommerce transactions."
  }

  dimension: ecommerce_refund_value {
    type: number
    sql: ${TABLE}.ecommerce_refund_value ;;
    description: "Refund value for ecommerce transactions."
  }

  dimension: ecommerce_shipping_value_in_usd {
    type: number
    sql: ${TABLE}.ecommerce_shipping_value_in_usd ;;
    description: "Shipping value in USD for ecommerce transactions."
  }

  dimension: ecommerce_shipping_value {
    type: number
    sql: ${TABLE}.ecommerce_shipping_value ;;
    description: "Shipping value for ecommerce transactions."
  }

  dimension: ecommerce_tax_value_in_usd {
    type: number
    sql: ${TABLE}.ecommerce_tax_value_in_usd ;;
    description: "Tax value in USD for ecommerce transactions."
  }

  dimension: ecommerce_tax_value {
    type: number
    sql: ${TABLE}.ecommerce_tax_value ;;
    description: "Tax value for ecommerce transactions."
  }

  dimension: ecommerce_unique_items {
    type: number
    sql: ${TABLE}.ecommerce_unique_items ;;
    description: "Number of unique items in the ecommerce transaction."
  }

  dimension: ecommerce_transaction_id {
    type: string
    sql: ${TABLE}.ecommerce_transaction_id ;;
    description: "Transaction ID for the ecommerce transaction."
  }

  dimension: join_key {
    type: string
    sql: ${TABLE}.join_key ;;
    description: "Join key created by concatenating user_pseudo_id, event_timestamp, event_name, and a row number."
  }
}