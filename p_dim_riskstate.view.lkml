view: p_dim_riskstate {
  sql_table_name: PUBLIC.P_DIM_RISKSTATE ;;

  dimension: r_latitude {
    type: string
    sql: ${TABLE}."R_LATITUDE" ;;
  }

  dimension: r_longitude {
    type: string
    sql: ${TABLE}."R_LONGITUDE" ;;
  }

  dimension: r_risk_state_code {
    type: string
    sql: ${TABLE}."R_RISK_STATE_CODE" ;;
  }

  dimension: r_risk_state_id {
    type: string
    sql: ${TABLE}."R_Risk State_ID" ;;
  }

  dimension: r_risk_state_meaning {
    type: string
    sql: ${TABLE}."R_RISK_STATE_MEANING" ;;
  }

  measure: count {
    type: count
    drill_fields: [r_risk_state_id,r_risk_state_meaning]
  }
}
