view: income_band {
  sql_table_name: "TPCDS_SF10TCL"."INCOME_BAND"
    ;;

  dimension: ib_income_band_sk {
    type: number
    sql: ${TABLE}."IB_INCOME_BAND_SK" ;;
  }

  dimension: ib_lower_bound {
    type: number
    sql: ${TABLE}."IB_LOWER_BOUND" ;;
  }

  dimension: ib_upper_bound {
    type: number
    sql: ${TABLE}."IB_UPPER_BOUND" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
