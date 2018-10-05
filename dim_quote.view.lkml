view: dim_quote {
  sql_table_name: PUBLIC.DIM_QUOTE ;;

  dimension_group: q_effective_date_mmddyyyy {
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
    sql: ${TABLE}."Q_Effective Date (MM/DD/YYYY)" ;;
  }

  dimension_group: q_expiration_date_mmddyyyy {
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
    sql: ${TABLE}."Q_Expiration Date (MM/DD/YYYY)" ;;
  }

  dimension: q_quote_id {
    type: string
    sql: ${TABLE}."Q_Quote ID" ;;
  }

  dimension: q_quote_number {
    type: string
    sql: ${TABLE}."Q_Quote Number" ;;
  }

  dimension: q_quote_status {
    type: string
    sql: ${TABLE}."Q_Quote Status" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
