view: stored_status_cross_table {
  sql_table_name: "RECOMMENDED_DATA_SETS"."STORED_STATUS_CROSS_TABLE"
    ;;

  dimension: aed_flg {
    type: string
    sql: ${TABLE}."AED_FLG" ;;
  }

  dimension: child_care_flg {
    type: string
    sql: ${TABLE}."CHILD_CARE_FLG" ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}."CITY_NAME" ;;
  }

  dimension: cultural_flg {
    type: string
    sql: ${TABLE}."CULTURAL_FLG" ;;
  }

  dimension: evacuation_flg {
    type: string
    sql: ${TABLE}."EVACUATION_FLG" ;;
  }

  dimension: events_flg {
    type: string
    sql: ${TABLE}."EVENTS_FLG" ;;
  }

  dimension: firewater_facilities_flg {
    type: string
    sql: ${TABLE}."FIREWATER_FACILITIES_FLG" ;;
  }

  dimension: medical_flg {
    type: string
    sql: ${TABLE}."MEDICAL_FLG" ;;
  }

  dimension: nursing_flg {
    type: string
    sql: ${TABLE}."NURSING_FLG" ;;
  }

  dimension: population_flg {
    type: string
    sql: ${TABLE}."POPULATION_FLG" ;;
  }

  dimension: public_facilities_flg {
    type: string
    sql: ${TABLE}."PUBLIC_FACILITIES_FLG" ;;
  }

  dimension: toilets_flg {
    type: string
    sql: ${TABLE}."TOILETS_FLG" ;;
  }

  dimension: tourist_flg {
    type: string
    sql: ${TABLE}."TOURIST_FLG" ;;
  }

  dimension: wireless_lan_flg {
    type: string
    sql: ${TABLE}."WIRELESS_LAN_FLG" ;;
  }

  measure: count {
    type: count
    drill_fields: [city_name]
  }
}
