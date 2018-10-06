view: p_dim_policy {
  sql_table_name: PUBLIC.P_DIM_POLICY ;;

  dimension: _gross_written_premium_ {
    type: number
    sql: ${TABLE}." Gross_Written_Premium " ;;
  }

  dimension_group: p_effective {
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
    sql: ${TABLE}."P_EFFECTIVE_DATE" ;;
  }

  dimension_group: p_expiration {
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
    sql: ${TABLE}."P_EXPIRATION_DATE" ;;
  }

  dimension: p_policy_active {
    type: string
    sql: ${TABLE}."P_Policy_Active?" ;;
  }

  dimension: p_policy_id {
    type: string
primary_key: yes
    sql: ${TABLE}."P_POLICY_ID" ;;
  }

  dimension: p_policy_issuance_type {
    type: string
    sql: ${TABLE}."P_POLICY_ISSUANCE_TYPE" ;;
  }

  dimension: p_policy_number {
    type: string
    sql: ${TABLE}."P_POLICY_NUMBER" ;;
  }

  dimension: p_policy_status {
    type: string
    sql: ${TABLE}."P_POLICY_STATUS" ;;
  }

  dimension: p_policy_underwriting_status {
    type: string
    sql: ${TABLE}."P_POLICY_UNDERWRITING_STATUS" ;;
  }

  measure: count {
    type: count

    drill_fields: []
  }

  measure: p_gross_written_premium{
    type: sum
    sql: ${_gross_written_premium_} ;;
  }
}
