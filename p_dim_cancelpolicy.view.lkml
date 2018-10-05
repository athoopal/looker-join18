view: p_dim_cancelpolicy {
  sql_table_name: PUBLIC.P_DIM_CANCELPOLICY ;;

  dimension: cancellation_code {
    type: string
    sql: ${TABLE}."CANCELLATION_CODE" ;;
  }

  dimension_group: cancellation {
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
    sql: ${TABLE}."CANCELLATION_DATE" ;;
  }

  dimension: cancellation_id {
    type: string
    sql: ${TABLE}."CANCELLATION_ID" ;;
  }

  dimension: cancellation_reason {
    type: string
    sql: ${TABLE}."CANCELLATION_REASON" ;;
  }

  dimension: cancellation_type {
    type: string
    sql: ${TABLE}."CANCELLATION_TYPE" ;;
  }

  dimension: policy_cancel_id__ {
    type: string
    sql: ${TABLE}."Policy_Cancel_ID  " ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
