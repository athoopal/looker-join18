view: agent2 {
  sql_table_name: PUBLIC.AGENT2 ;;

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

  dimension_group: target_start {
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
    sql: ${TABLE}."Target StartDate" ;;
  }

  dimension_group: targetenddate {
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
    sql: ${TABLE}."TARGETENDDATE" ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}
