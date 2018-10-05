view: p_dim_billingpayment {
  sql_table_name: PUBLIC.P_DIM_BILLINGPAYMENT ;;

  dimension: billing_payment_id {
    type: string
    sql: ${TABLE}."BILLING_PAYMENT_ID" ;;
  }

  dimension: payment_method_code {
    type: string
    sql: ${TABLE}."PAYMENT_METHOD_CODE" ;;
  }

  dimension: payment_method_type {
    type: string
    sql: ${TABLE}."PAYMENT_METHOD_TYPE" ;;
  }

  dimension: policy_billing_payment_id_ {
    type: string
    sql: ${TABLE}."Policy_Billing_Payment_ID " ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
