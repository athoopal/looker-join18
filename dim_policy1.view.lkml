view: dim_policy1 {
  sql_table_name: PUBLIC.DIM_POLICY1 ;;

  dimension: agentid {
    type: string
    sql: ${TABLE}."AGENTID" ;;
  }

  dimension: agentname {
    type: string
    sql: ${TABLE}."AGENTNAME" ;;
  }

  dimension: amountinsured {
    type: number
    sql: ${TABLE}."AMOUNTINSURED" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: interestrate {
    type: number
    sql: ${TABLE}."INTERESTRATE" ;;
  }

  dimension: monthlypremiumtobepaid {
    type: number
    value_format_name: id
    sql: ${TABLE}."MONTHLYPREMIUMTOBEPAID" ;;
  }

  dimension: numberofmonthtobepaid {
    type: number
    value_format_name: id
    sql: ${TABLE}."NUMBEROFMONTHTOBEPAID" ;;
  }

  dimension_group: policyenddate {
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
    sql: ${TABLE}."POLICYENDDATE" ;;
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

  dimension: policyissuancetype {
    type: string
    sql: ${TABLE}."POLICYISSUANCETYPE" ;;
  }

  dimension: policyname {
    type: string
    sql: ${TABLE}."POLICYNAME" ;;
  }

  dimension: policystatus {
    type: string
    sql: ${TABLE}."POLICYSTATUS" ;;
  }

  dimension: policytype {
    type: string
    sql: ${TABLE}."POLICYTYPE" ;;
  }

  dimension: proudctid {
    type: string
    sql: ${TABLE}."PROUDCTID" ;;
  }

  measure: count {
    type: count
    drill_fields: [policyname, agentname]
  }
}
