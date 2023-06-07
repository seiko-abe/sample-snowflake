view: child_care_facilities {
  sql_table_name: "RECOMMENDED_DATA_SETS"."CHILD_CARE_FACILITIES"
    ;;

  dimension: accept_ages {
    type: string
    sql: ${TABLE}."ACCEPT_AGES" ;;
  }

  dimension: access {
    type: string
    sql: ${TABLE}."ACCESS" ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}."ADDRESS" ;;
  }

  dimension: avail_day {
    type: string
    sql: ${TABLE}."AVAIL_DAY" ;;
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
    type: number
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

  dimension: corp_code {
    type: string
    sql: ${TABLE}."CORP_CODE" ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}."END_TIME" ;;
  }

  dimension: ext_number {
    type: string
    sql: ${TABLE}."EXT_NUMBER" ;;
  }

  dimension: fax_number {
    type: string
    sql: ${TABLE}."FAX_NUMBER" ;;
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

  dimension: org_name {
    type: string
    sql: ${TABLE}."ORG_NAME" ;;
  }

  dimension: parking_info {
    type: string
    sql: ${TABLE}."PARKING_INFO" ;;
  }

  dimension_group: permit {
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
    sql: ${TABLE}."PERMIT_DATE" ;;
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

  dimension: sp_note {
    type: string
    sql: ${TABLE}."SP_NOTE" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."START_TIME" ;;
  }

  dimension: temporary_childcare_flg {
    type: string
    sql: ${TABLE}."TEMPORARY_CHILDCARE_FLG" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
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
    drill_fields: [pref_name, city_name, building_name, org_name]
  }
}
