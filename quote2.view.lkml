view: quote2 {
  sql_table_name: PUBLIC.QUOTE2 ;;

  dimension: agent_id {
    type: string
    sql: ${TABLE}."Agent ID" ;;
  }

  dimension: key_metric {
    type: string
    sql: ${TABLE}."Key Metric" ;;
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

  dimension: policy_status {
    type: string
    sql: ${TABLE}."Policy Status" ;;
  }

  dimension: quote_id {
    type: string
    sql: ${TABLE}."Quote ID" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."Start Date" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
