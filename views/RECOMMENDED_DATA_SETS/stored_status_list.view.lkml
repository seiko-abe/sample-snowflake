view: stored_status_list {
  sql_table_name: "RECOMMENDED_DATA_SETS"."STORED_STATUS_LIST"
    ;;

  dimension: city_name {
    type: string
    sql: ${TABLE}."CITY_NAME" ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}."COUNT" ;;
  }

  dimension: data_set {
    type: string
    sql: ${TABLE}."DATA_SET" ;;
  }

  dimension_group: last_update {
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
    sql: ${TABLE}."LAST_UPDATE" ;;
  }

  # measure: count {
  #   type: count
  #   drill_fields: [city_name]
  # }
}
