connection: "ga4_dbt_lkml_project"
include: "/views/*"

explore: ga4_items {
  description: "This model prepares and flattens GA4 items data, creating a join key and deduplicating item events."
}