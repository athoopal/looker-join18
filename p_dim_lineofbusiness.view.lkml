view: p_dim_lineofbusiness {
  sql_table_name: PUBLIC.P_DIM_LINEOFBUSINESS ;;

  dimension: l_line_of_business {
    type: string
    sql: ${TABLE}."L_LINE_OF_BUSINESS" ;;
  }

  dimension: l_line_of_business_code {
    type: string
    sql: ${TABLE}."L_LINE_OF_BUSINESS_CODE" ;;
  }

  dimension: l_line_of_business_id {
    type: string
    sql: ${TABLE}."L_LINE_OF_BUSINESS_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
