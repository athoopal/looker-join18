view: dim_agent {
  sql_table_name: PUBLIC.DIM_AGENT ;;

  dimension: a_agent_id {
    type: number
    sql: ${TABLE}."A_Agent ID" ;;
  }

  dimension: a_agent_license_expiration_date_mmddyyyy {
    type: string
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

  dimension: a_target_conversions_per_month {
    type: string
    sql: ${TABLE}."A_Target Conversions per Month" ;;
  }

  dimension: a_target_leeds_per_month {
    type: string
    sql: ${TABLE}."A_Target Leeds per month" ;;
  }

  dimension: aa_agent_license_start_datemmddyyyy {
    type: string
    sql: ${TABLE}."AA_Agent License Start Date(MM/DD/YYYY)" ;;
  }

  measure: count {
    type: count
    drill_fields: [a_agent_name]
  }

  measure: count1 {
    label: "Agent_Count"
    type: count_distinct
    drill_fields: [a_agent_id]
  }

}
