view: dim_line_of_business {
  sql_table_name: PUBLIC.DIM_LINE_OF_BUSINESS ;;

  dimension: l_line_of_business {
    type: string
    sql: ${TABLE}."L_Line of Business" ;;
  }

  dimension: l_line_of_business_code {
    type: string
    sql: ${TABLE}."L_Line of Business Code" ;;
  }

  dimension: l_line_of_business_id {
    type: string
    sql: ${TABLE}."L_Line of Business ID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: count1 {
    label: "LOB_Count"
    type: count
    drill_fields: [l_line_of_business_id]
  }
}
