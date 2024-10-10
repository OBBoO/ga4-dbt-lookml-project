view: stg_ga4_events {
  sql_table_name: converteo-training-looker.ga4_dbt_lkml_project.stg_ga4_events ;;

  dimension_group: event_timestamp {
    type: time
    sql: ${TABLE}.event_timestamp ;;
    description: "Timestamp of the event."
    datatype: timestamp
    timeframes: [
      raw,
      time,
      hour,
      date,
      week,
      month,
      quarter,
      year,
    ]
  }

  dimension: event_date {
    type: string
    sql: ${TABLE}.event_date ;;
    description: "Date of the event in YYYYMMDD format."
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
    description: "Name of the event."
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
    description: "Anonymized user ID."
  }

  dimension: page_location {
    type: string
    sql: ${TABLE}.page_location ;;
    description: "URL of the page where the event occurred."
  }

  dimension: engagement_time_msec {
    type: number
    sql: ${TABLE}.engagement_time_msec ;;
    description: "Engagement time in milliseconds."
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
    description: "Country of the user."
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
    description: "Region of the user."
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
    description: "City of the user."
  }

  dimension: device_category {
    type: string
    sql: ${TABLE}.device_category ;;
    description: "Device category (desktop, mobile, tablet)."
  }

  dimension: operating_system {
    type: string
    sql: ${TABLE}.operating_system ;;
    description: "Operating system of the device."
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
    description: "Browser used."
  }

  dimension: traffic_source_name {
    type: string
    sql: ${TABLE}.traffic_source_name ;;
    description: "Name of the traffic source."
  }

  dimension: traffic_medium {
    type: string
    sql: ${TABLE}.traffic_medium ;;
    description: "Medium of the traffic source."
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
    description: "Source of the traffic."
  }
}