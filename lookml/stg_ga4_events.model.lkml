connection: "ga4_dbt_lkml_project"
include: "/views/*"

explore: stg_ga4_events {
  description: "Staging model for GA4 events data."
}