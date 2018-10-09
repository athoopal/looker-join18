view: p_fct_productdashboard {
  sql_table_name: PUBLIC.P_FCT_PRODUCTDASHBOARD ;;

  dimension: f_agent_id {
    type: string
    sql: ${TABLE}."F_AGENT_ID" ;;
  }

  dimension: f_calendar_key {
    type: string
    sql: ${TABLE}."F_CALENDAR_KEY" ;;
  }

  dimension: f_line_of_business_id {
    type: string
    sql: ${TABLE}."F_Line_of Business_ID" ;;
  }

  dimension: f_line_of_f_billing_payments {
    type: string
    sql: ${TABLE}."F_Line_of F_BillingPayments" ;;
  }

  dimension: f_line_of_f_cancellation_id {
    type: string
    sql: ${TABLE}."F_Line_of F_Cancellation_ID" ;;
  }

  dimension: f_policy_id {
    type: string
    sql: ${TABLE}."F_POLICY_ID" ;;
  }

  dimension: f_risk_state_id {
    type: string
    sql: ${TABLE}."F_RISK_STATE_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [f_agent_id,f_policy_id,f_risk_state_id,f_line_of_f_cancellation_id,f_line_of_f_billing_payments]
  }
}
