view: core_ga4_sessions {
  sql_table_name: converteo-training-looker.ga4_dbt_lkml_project.core_ga4_sessions ;;

  dimension_group: session_start_time {
    type: time
    sql: ${TABLE}.session_start_time ;;
    description: "Start time of the session."
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

  dimension_group: session_end_time {
    type: time
    sql: ${TABLE}.session_end_time ;;
    description: "End time of the session."
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

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
    description: "Anonymized user ID."
  }

  dimension: page_views {
    type: number
    sql: ${TABLE}.page_views ;;
    description: "Number of page views during the session."
  }

  dimension: total_engagement_time_msec {
    type: number
    sql: ${TABLE}.total_engagement_time_msec ;;
    description: "Total engagement time in milliseconds."
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
    description: "Device category used during the session."
  }

  dimension: operating_system {
    type: string
    sql: ${TABLE}.operating_system ;;
    description: "Operating system of the device."
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
    description: "Browser used during the session."
  }
}