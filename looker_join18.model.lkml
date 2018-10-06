connection: "join18v2"

# include all the views
include: "*.view"

datagroup: looker_join18_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_join18_default_datagroup

explore: p_dim_agent {  }

explore: p_dim_billingpayment {}



explore: p_dim_lineofbusiness {}

explore: p_dim_policy {}

explore: p_dim_riskstate {}

explore: p_dim_time {}



explore: dim_agent {  }

explore: dim_distribution_channel {}

explore: dim_line_of_business {}

explore: dim_policy {}

explore: dim_quote {}

explore: policy2 {}

explore: quote2 {}

explore: dim_tim {}





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

  explore: p_fct_productdashboard {

       join: p_dim_agent {
        type: inner
        relationship: many_to_one
        sql_on: ${p_fct_productdashboard.f_agent_id}=${p_dim_agent.a_agent_id} ;;
      }

    join: p_dim_cancelpolicy {
      type: inner
      relationship: many_to_one
      sql_on: ${p_fct_productdashboard.f_line_of_f_cancellation_id}=${p_dim_cancelpolicy.cancellation_id} ;;
    }

    join: p_dim_lineofbusiness {
      type: inner
      relationship: many_to_one
      sql_on: ${p_fct_productdashboard.f_line_of_business_id}=${p_dim_lineofbusiness.l_line_of_business_id} ;;
    }

    join: p_dim_policy {
      type: inner
      relationship: many_to_one
      sql_on: ${p_fct_productdashboard.f_policy_id}=${p_dim_policy.p_policy_id} ;;
    }

    join: p_dim_riskstate {
      type: inner
      relationship: many_to_one
      sql_on: ${p_fct_productdashboard.f_risk_state_id}=${p_dim_riskstate.r_risk_state_id} ;;
    }

    join: p_dim_time {
      type: inner
      relationship: many_to_one
      sql_on: ${p_fct_productdashboard.f_calendar_key}=${p_dim_time.calendar_key} ;;
    }

    join: p_dim_billingpayment {
      type: inner
      relationship: many_to_one
      sql_on: ${p_fct_productdashboard.f_line_of_f_billing_payments}=${p_dim_billingpayment.billing_payment_id} ;;
    }

}
