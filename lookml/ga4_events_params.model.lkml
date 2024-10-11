connection: "ga4_dbt_lkml_project"
include: "/views/*"

explore: ga4_events_params {
  description: "This model prepares and flattens raw GA4 events data, creating a join key and deduplicating events."
}