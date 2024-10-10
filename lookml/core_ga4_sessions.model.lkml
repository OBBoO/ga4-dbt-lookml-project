connection: "ga4_dbt_lkml_project"
include: "/views/*"

explore: core_ga4_sessions {
  description: "Core model aggregating sessions data."
}