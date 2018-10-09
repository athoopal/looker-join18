view: fct_agentdashboard {
  sql_table_name: PUBLIC.FCT_AGENTDASHBOARD ;;

  dimension: f_agent_id {
    type: string
    sql: ${TABLE}."F_Agent ID" ;;
  }

  dimension: f_calendar_key {
    type: string
    sql: ${TABLE}."F_Calendar Key" ;;
  }

  dimension: f_distribution_channel_id {
    type: string
    sql: ${TABLE}."F_Distribution Channel ID" ;;
  }

  dimension: f_line_of_business_id {
    type: string
    sql: ${TABLE}."F_Line of Business ID" ;;
  }

  dimension: f_policy_id {
    type: string
    sql: ${TABLE}."F_Policy ID" ;;
  }

  dimension: f_quote_id {
    type: string
    sql: ${TABLE}."F_Quote ID" ;;
  }

  dimension: f_risk_state_id {
    type: string
    sql: ${TABLE}."F_Risk State ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [f_agent_id,f_distribution_channel_id,f_policy_id,f_quote_id,f_risk_state_id,f_calendar_key]
  }
}
