connection: "join18v2"

# include all the views
include: "*.view"

datagroup: looker_join18_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_join18_default_datagroup

explore: dim_agent {  }

explore: dim_distribution_channel {}

explore: dim_line_of_business {}

explore: dim_policy {}

explore: dim_quote {}

explore: policy2 {}

explore: quote2 {}

explore: dim_tim {}

explore: p_dim_agent {}
explore: p_dim_billingpayment {}
explore: p_dim_cancelpolicy {}
explore: p_dim_lineofbusiness {}
explore: p_dim_policy {}
explore: p_dim_riskstate {}
explore: p_dim_time {}
explore: p_fct_productdashboard {}

explore: agent2 {}

explore: dim_risk_state {}

explore: fct_agentdashboard {

  join: dim_risk_state {
    type: inner
    relationship: many_to_one
    sql_on: ${fct_agentdashboard.f_line_of_business_id}=${dim_risk_state.r_risk_state_id} ;;
  }

  join: dim_agent {
    type: inner
    relationship: many_to_one
    sql_on: ${fct_agentdashboard.f_agent_id}=${dim_agent.a_agent_id} ;;
  }

  join: dim_policy {
    type: inner
    relationship: many_to_one
    sql_on: ${fct_agentdashboard.f_policy_id}=${dim_policy.p_policy_id} ;;
  }

  join: dim_quote {
    type: inner
    relationship: many_to_one
    sql_on: ${fct_agentdashboard.f_quote_id}=${dim_quote.q_quote_id} ;;
  }

  join: dim_distribution_channel {
    type: inner
    relationship: many_to_one
    sql_on: ${fct_agentdashboard.f_distribution_channel_id}=${dim_distribution_channel.d_distribution_channel_id} ;;
  }

  join: dim_line_of_business {
    type: inner
    relationship: many_to_one
    sql_on: ${fct_agentdashboard.f_risk_state_id}=${dim_line_of_business.l_line_of_business} ;;
  }

  join: dim_tim {
    type: inner
    relationship: many_to_one
    sql_on: ${fct_agentdashboard.f_calendar_key}=${dim_tim.calkey} ;;
  }



}
