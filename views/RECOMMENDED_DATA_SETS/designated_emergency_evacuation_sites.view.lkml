view: designated_emergency_evacuation_sites {
  sql_table_name: "RECOMMENDED_DATA_SETS"."DESIGNATED_EMERGENCY_EVACUATION_SITES"
    ;;

  dimension: address {
    type: string
    sql: ${TABLE}."ADDRESS" ;;
  }

  dimension: building_address {
    type: string
    sql: ${TABLE}."BUILDING_ADDRESS" ;;
  }

  dimension: building_name {
    type: string
    sql: ${TABLE}."BUILDING_NAME" ;;
  }

  dimension: building_name_kana {
    type: string
    sql: ${TABLE}."BUILDING_NAME_KANA" ;;
  }

  dimension: capacity {
    type: string
    sql: ${TABLE}."CAPACITY" ;;
  }

  dimension: city_code {
    type: string
    sql: ${TABLE}."CITY_CODE" ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}."CITY_NAME" ;;
  }

  dimension: disaster_type_earthquake_flg {
    type: string
    sql: ${TABLE}."DISASTER_TYPE_EARTHQUAKE_FLG" ;;
  }

  dimension: disaster_type_flood_flg {
    type: string
    sql: ${TABLE}."DISASTER_TYPE_FLOOD_FLG" ;;
  }

  dimension: disaster_type_high_tide_flg {
    type: string
    sql: ${TABLE}."DISASTER_TYPE_HIGH_TIDE_FLG" ;;
  }

  dimension: disaster_type_inundation_of_inland_waters_flg {
    type: string
    sql: ${TABLE}."DISASTER_TYPE_INUNDATION_OF_INLAND_WATERS_FLG" ;;
  }

  dimension: disaster_type_landslide_flg {
    type: string
    sql: ${TABLE}."DISASTER_TYPE_LANDSLIDE_FLG" ;;
  }

  dimension: disaster_type_large_fire_flg {
    type: string
    sql: ${TABLE}."DISASTER_TYPE_LARGE_FIRE_FLG" ;;
  }

  dimension: disaster_type_tsunami_flg {
    type: string
    sql: ${TABLE}."DISASTER_TYPE_TSUNAMI_FLG" ;;
  }

  dimension: disaster_type_volcano_flg {
    type: string
    sql: ${TABLE}."DISASTER_TYPE_VOLCANO_FLG" ;;
  }

  dimension: duplication_flg {
    type: string
    sql: ${TABLE}."DUPLICATION_FLG" ;;
  }

  dimension: elevation {
    type: number
    sql: ${TABLE}."ELEVATION" ;;
  }

  dimension: ext_number {
    type: string
    sql: ${TABLE}."EXT_NUMBER" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: no_ {
    type: string
    sql: ${TABLE}."NO" ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}."PHONE_NUMBER" ;;
  }

  dimension: pref_name {
    type: string
    sql: ${TABLE}."PREF_NAME" ;;
  }

  dimension: remark {
    type: string
    sql: ${TABLE}."REMARK" ;;
  }

  dimension: town_community {
    type: string
    sql: ${TABLE}."TOWN_COMMUNITY" ;;
  }

  dimension: unique_format {
    type: string
    sql: ${TABLE}."UNIQUE_FORMAT" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."UPDATED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."URL" ;;
  }

  measure: count {
    type: count
    drill_fields: [building_name, city_name, pref_name]
  }
}
