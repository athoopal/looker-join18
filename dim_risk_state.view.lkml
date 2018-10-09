view: dim_risk_state {
  sql_table_name: PUBLIC.DIM_RISK_STATE ;;

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
    sql: ${TABLE}."R_Risk State Code" ;;
  }

  dimension: r_risk_state_id {
    type: string
    sql: ${TABLE}."R_Risk State ID" ;;
  }

  dimension: r_risk_state_meaning {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}."R_Risk State Meaning" ;;
  }

  measure: count {
    type: count
    drill_fields: [r_risk_state_meaning,r_risk_state_id]
  }

  measure: count1 {
    label: "Risk_State_Count"
    type: count
    drill_fields: [r_risk_state_meaning,r_risk_state_id]
  }
}
