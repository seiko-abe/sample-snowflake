view: city_master {
  sql_table_name: "RECOMMENDED_DATA_SETS"."CITY_MASTER"
    ;;

  dimension: city_code {
    type: string
    sql: ${TABLE}."CITY_CODE" ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}."CITY_NAME" ;;
  }

  dimension: no_ {
    type: number
    sql: ${TABLE}."NO" ;;
  }

  measure: count {
    type: count
    drill_fields: [city_name]
  }
}
