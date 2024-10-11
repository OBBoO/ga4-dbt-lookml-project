view: ga4_user_properties {
  sql_table_name: converteo-training-looker.ga4_dbt_lkml_project.ga4_user_properties ;;

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

  dimension: join_key {
    type: string
    sql: ${TABLE}.join_key ;;
    description: "Join key created by concatenating user_pseudo_id, event_timestamp, event_name, and dedup_id."
  }
}