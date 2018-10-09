view: p_dim_agent {
  sql_table_name: PUBLIC.P_DIM_AGENT ;;

  dimension_group: a_agent_a_agent_license_start_datemmddyyyy {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."A_Agent A_Agent License Start Date(MM/DD/YYYY)" ;;
  }

  dimension: a_agent_id {
    type: string
    sql: ${TABLE}."A_Agent ID" ;;
  }

  dimension_group: a_agent_license_expiration_date_mmddyyyy {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."A_Agent License Expiration Date (MM/DD/YYYY)" ;;
  }

  dimension: a_agent_name {
    type: string
    sql: ${TABLE}."A_Agent Name" ;;
  }

  dimension: a_agentuserid {
    type: string
    sql: ${TABLE}."A_AGENTUSERID" ;;
  }

  dimension: a_producer_number {
    type: string
    sql: ${TABLE}."A_Producer Number" ;;
  }

  measure: count {
    type: count
    drill_fields: [a_agent_id,a_agent_name]
  }
}
