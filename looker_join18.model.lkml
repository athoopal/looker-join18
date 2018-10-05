connection: "join18v2"

# include all the views
include: "*.view"

datagroup: looker_join18_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_join18_default_datagroup

explore: dim_agent {}

explore: dim_distribution_channel {}

explore: dim_line_of_business {}

explore: dim_policy {}

explore: dim_quote {}

explore: dim_risk_state {}

explore: fct_agentdashboard {}
