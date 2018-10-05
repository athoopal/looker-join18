view: dim_policy {
  sql_table_name: PUBLIC.DIM_POLICY ;;

  dimension_group: p_effective_date_mmddyyyy {
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
    sql: ${TABLE}."P_Effective Date (MM/DD/YYYY)" ;;
  }

  dimension_group: p_expiration_date_mmddyyyy {
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
    sql: ${TABLE}."P_Expiration Date (MM/DD/YYYY)" ;;
  }

  dimension: p_policy_active {
    type: string
    sql: ${TABLE}."P_Policy Active?" ;;
  }

  dimension: p_policy_id {
    type: string
    sql: ${TABLE}."P_Policy ID" ;;
  }

  dimension: p_policy_issuance_type {
    type: string
    sql: ${TABLE}."P_Policy Issuance Type" ;;
  }

  dimension: p_policy_number {
    type: string
    sql: ${TABLE}."P_Policy Number" ;;
  }

  dimension: p_policy_status {
    type: string
    sql: ${TABLE}."P_Policy Status" ;;
  }

  dimension: p_policy_underwriting_status {
    type: string
    sql: ${TABLE}."P_Policy Underwriting Status" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: count1 {
    label: "Ploicy_Count"
    type: count_distinct
    drill_fields: [p_policy_id]
  }

}
