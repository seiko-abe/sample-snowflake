view: events {
  sql_table_name: "RECOMMENDED_DATA_SETS"."EVENTS"
    ;;

  dimension: access {
    type: string
    sql: ${TABLE}."ACCESS" ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}."ADDRESS" ;;
  }

  dimension: basic_fee {
    type: string
    sql: ${TABLE}."BASIC_FEE" ;;
  }

  dimension: building_address {
    type: string
    sql: ${TABLE}."BUILDING_ADDRESS" ;;
  }

  dimension: building_name {
    type: string
    sql: ${TABLE}."BUILDING_NAME" ;;
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

  dimension: contact_name {
    type: string
    sql: ${TABLE}."CONTACT_NAME" ;;
  }

  dimension_group: created {
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
    sql: CAST(${TABLE}."CREATED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: detailed_fee {
    type: string
    sql: ${TABLE}."DETAILED_FEE" ;;
  }

  dimension_group: end_date {
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
    sql: ${TABLE}."END_DATE" ;;
  }

  dimension_group: end_time {
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

  dimension_group: entry_deadline {
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
    sql: ${TABLE}."ENTRY_DEADLINE" ;;
  }

  dimension_group: entry_end {
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
    sql: ${TABLE}."ENTRY_END_TIME" ;;
  }

  dimension: entry_method {
    type: string
    sql: ${TABLE}."ENTRY_METHOD" ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}."EVENT" ;;
  }

  dimension: event_eng {
    type: string
    sql: ${TABLE}."EVENT_ENG" ;;
  }

  dimension: event_kana {
    type: string
    sql: ${TABLE}."EVENT_KANA" ;;
  }

  dimension: explanation {
    type: string
    sql: ${TABLE}."EXPLANATION" ;;
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

  dimension: organizer {
    type: string
    sql: ${TABLE}."ORGANIZER" ;;
  }

  dimension: parking_info {
    type: string
    sql: ${TABLE}."PARKING_INFO" ;;
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

  dimension_group: start_date {
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
    sql: ${TABLE}."START_DATE" ;;
  }

  dimension_group: start_time {
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
    drill_fields: [pref_name, city_name, building_name, contact_name]
  }
}
