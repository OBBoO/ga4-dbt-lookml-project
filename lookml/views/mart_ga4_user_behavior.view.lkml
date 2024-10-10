view: mart_ga4_user_behavior {
  sql_table_name: converteo-training-looker.ga4_dbt_lkml_project.mart_ga4_user_behavior ;;

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
    description: "Anonymized user ID."
  }

  dimension: total_sessions {
    type: number
    sql: ${TABLE}.total_sessions ;;
    description: "Total number of sessions per user."
  }

  dimension: total_page_views {
    type: number
    sql: ${TABLE}.total_page_views ;;
    description: "Total page views per user."
  }

  dimension: total_engagement_time_sec {
    type: number
    sql: ${TABLE}.total_engagement_time_sec ;;
    description: "Total engagement time in seconds per user."
  }

  dimension: avg_engagement_time_sec {
    type: number
    sql: ${TABLE}.avg_engagement_time_sec ;;
    description: "Average engagement time in seconds per session."
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
    description: "Device category used by the user."
  }

  dimension: operating_system {
    type: string
    sql: ${TABLE}.operating_system ;;
    description: "Operating system of the device."
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
    description: "Browser used by the user."
  }
}