view: medical_institutions {
  sql_table_name: "RECOMMENDED_DATA_SETS"."MEDICAL_INSTITUTIONS"
    ;;

  dimension: address {
    type: string
    sql: ${TABLE}."ADDRESS" ;;
  }

  dimension: after_hours_sprt {
    type: string
    sql: ${TABLE}."AFTER_HOURS_SPRT" ;;
  }

  dimension: avail_day {
    type: string
    sql: ${TABLE}."AVAIL_DAY" ;;
  }

  dimension: building_address {
    type: string
    sql: ${TABLE}."BUILDING_ADDRESS" ;;
  }

  dimension: building_code {
    type: string
    sql: ${TABLE}."BUILDING_CODE" ;;
  }

  dimension: building_name {
    type: string
    sql: ${TABLE}."BUILDING_NAME" ;;
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

  dimension: corp_code {
    type: string
    sql: ${TABLE}."CORP_CODE" ;;
  }

  dimension: corp_name {
    type: string
    sql: ${TABLE}."CORP_NAME" ;;
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

  dimension: med_subj {
    type: string
    sql: ${TABLE}."MED_SUBJ" ;;
  }

  dimension: medical_institutions_type {
    type: string
    sql: ${TABLE}."MEDICAL_INSTITUTIONS_TYPE" ;;
  }

  dimension: no_ {
    type: string
    sql: ${TABLE}."NO" ;;
  }

  dimension: number_of_beds {
    type: number
    sql: ${TABLE}."NUMBER_OF_BEDS" ;;
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
    drill_fields: [pref_name, building_name, city_name, corp_name]
  }
}
