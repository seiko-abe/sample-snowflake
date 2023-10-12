view: public_wireless_lan_access_points {
  sql_table_name: "RECOMMENDED_DATA_SETS"."PUBLIC_WIRELESS_LAN_ACCESS_POINTS"
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

  dimension: building_name_eng {
    type: string
    sql: ${TABLE}."BUILDING_NAME_ENG" ;;
  }

  dimension: building_name_kana {
    type: string
    sql: ${TABLE}."BUILDING_NAME_KANA" ;;
  }

  dimension: city_code {
    type: string
    sql: ${TABLE}."CITY_CODE" ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}."CITY_NAME" ;;
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

  dimension: org_installation {
    type: string
    sql: ${TABLE}."ORG_INSTALLATION" ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}."PHONE_NUMBER" ;;
  }

  dimension: pref_name {
    type: string
    sql: ${TABLE}."PREF_NAME";;
  }

  dimension: remark {
    type: string
    sql: ${TABLE}."REMARK" ;;
  }

  dimension: service_area {
    type: string
    sql: ${TABLE}."SERVICE_AREA" ;;
  }

  dimension: ssid {
    type: string
    sql: ${TABLE}."SSID" ;;
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
  measure: city_total {
    type: sum
    label: "合計"
    sql: ${TABLE}."CITY_NAME";;
  }
  measure: count {
    type: count
    drill_fields: [city_name, pref_name, building_name]
  }
}
