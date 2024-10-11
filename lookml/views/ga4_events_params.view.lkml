view: ga4_events_params {
  sql_table_name: converteo-training-looker.ga4_dbt_lkml_project.ga4_events_params ;;

  dimension: ga_session_id {
    type: number
    sql: ${TABLE}.ga_session_id ;;
    description: "Google Analytics session ID extracted from event parameters."
  }

  dimension: join_key {
    type: string
    sql: ${TABLE}.join_key ;;
    description: "Join key created by concatenating user_pseudo_id, event_timestamp, event_name, and dedup_id."
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
    description: "Pseudo user ID associated with the event."
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

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
    description: "Key associated with the event parameter."
  }

  dimension: string_value {
    type: string
    sql: ${TABLE}.string_value ;;
    description: "String value associated with the event parameter."
  }

  dimension: int_value {
    type: number
    sql: ${TABLE}.int_value ;;
    description: "Integer value associated with the event parameter."
  }

  dimension: float_value {
    type: number
    sql: ${TABLE}.float_value ;;
    description: "Float value associated with the event parameter."
  }

  dimension: double_value {
    type: number
    sql: ${TABLE}.double_value ;;
    description: "Double value associated with the event parameter."
  }

  dimension: dedup_id {
    type: number
    sql: ${TABLE}.dedup_id ;;
    description: "Unique identifier for each event to remove duplicates."
  }
}