view: dim_quote1 {
  sql_table_name: PUBLIC.DIM_QUOTE1 ;;

  dimension: agentid {
    type: string
    sql: ${TABLE}."AGENTID" ;;
  }

  dimension: keymetric {
    type: string
    sql: ${TABLE}."KEYMETRIC" ;;
  }

  dimension: policyid {
    type: string
    sql: ${TABLE}."POLICYID" ;;
  }

  dimension_group: policyissuancedate {
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
    sql: ${TABLE}."POLICYISSUANCEDATE" ;;
  }

  dimension: policystatus {
    type: string
    sql: ${TABLE}."POLICYSTATUS" ;;
  }

  dimension: quoteid {
    type: string
    sql: ${TABLE}."QUOTEID" ;;
  }

  dimension_group: startdate {
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
    sql: ${TABLE}."STARTDATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
