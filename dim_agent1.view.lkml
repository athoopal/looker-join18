view: dim_agent1 {
  sql_table_name: PUBLIC.DIM_AGENT1 ;;

  dimension: actual {
    type: number
    sql: ${TABLE}."ACTUAL" ;;
  }

  dimension: agentid {
    type: string
    sql: ${TABLE}."AGENTID" ;;
  }

  dimension: plan {
    type: number
    sql: ${TABLE}."PLAN" ;;
  }

  dimension_group: tragetenddate {
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
    sql: ${TABLE}."TRAGETENDDATE" ;;
  }

  dimension_group: tragetstartdate {
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
    sql: ${TABLE}."TRAGETSTARTDATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
