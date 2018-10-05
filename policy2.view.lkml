view: policy2 {
  sql_table_name: PUBLIC.POLICY2 ;;

  dimension: agent_id {
    type: string
    sql: ${TABLE}."Agent ID" ;;
  }

  dimension: agent_name {
    type: string
    sql: ${TABLE}."Agent Name" ;;
  }

  dimension: amount_insured {
    type: number
    sql: ${TABLE}."Amount Insured" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: interest_rate {
    type: number
    sql: ${TABLE}."Interest Rate" ;;
  }

  dimension: monthly_premium {
    type: number
    sql: ${TABLE}."Monthly Premium" ;;
  }

  dimension: number_of_months_to_be_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}."Number of Months to be paid" ;;
  }

  dimension_group: policy_end {
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
    sql: ${TABLE}."Policy End Date" ;;
  }

  dimension: policy_id {
    type: string
    sql: ${TABLE}."Policy ID" ;;
  }

  dimension_group: policy_issuance {
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
    sql: ${TABLE}."Policy Issuance Date" ;;
  }

  dimension: policy_issuance_type {
    type: string
    sql: ${TABLE}."Policy Issuance Type" ;;
  }

  dimension: policy_name {
    type: string
    sql: ${TABLE}."Policy Name" ;;
  }

  dimension: policy_status {
    type: string
    sql: ${TABLE}."Policy Status" ;;
  }

  dimension: policy_type {
    type: string
    sql: ${TABLE}."Policy Type" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."Product ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [policy_name, agent_name]
  }
}
