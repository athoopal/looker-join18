view: dim_distribution_channel {
  sql_table_name: PUBLIC.DIM_DISTRIBUTION_CHANNEL ;;

  dimension: d_distribution_channel_code {
    type: string
    sql: ${TABLE}."D_Distribution Channel Code" ;;
  }

  dimension: d_distribution_channel_id {
    type: string
    sql: ${TABLE}."D_Distribution Channel ID" ;;
  }

  dimension: d_distribution_channel_meaning {
    type: string
    sql: ${TABLE}."D_Distribution Channel Meaning" ;;
  }

  measure: count {
    type: count
    drill_fields: [d_distribution_channel_id,d_distribution_channel_meaning]
  }

  measure: count1  {
    label: "Distribution_Cannel_Count"
    type: count
    drill_fields: [d_distribution_channel_id,d_distribution_channel_meaning]
  }
}
