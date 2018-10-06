view: p_dim_time {
  sql_table_name: PUBLIC.P_DIM_TIME ;;

  dimension: calendar_key {
    type: string
    sql: ${TABLE}."CALENDAR_KEY" ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}."DAY" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."MONTH" ;;
  }

  dimension_group: the {
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
    sql: ${TABLE}."THE_DATE" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
