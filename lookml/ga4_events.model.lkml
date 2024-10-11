connection: "ga4_dbt_lkml_project"
include: "/views/*"

explore: ga4_events {
  description: "This model cleans and flattens raw GA4 events data."
}