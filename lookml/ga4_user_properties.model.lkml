connection: "ga4_dbt_lkml_project"
include: "/views/*"

explore: ga4_user_properties {
  description: "This model prepares and flattens GA4 user properties data, creating a join key and deduplicating user property events."
}