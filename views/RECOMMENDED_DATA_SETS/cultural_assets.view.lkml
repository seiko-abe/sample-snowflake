view: cultural_assets {
  sql_table_name: "RECOMMENDED_DATA_SETS"."CULTURAL_ASSETS"
    ;;

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

  dimension: cultural_assets {
    type: string
    sql: ${TABLE}."CULTURAL_ASSETS" ;;
  }

  dimension: cultural_assets_category {
    type: string
    sql: ${TABLE}."CULTURAL_ASSETS_CATEGORY" ;;
  }

  dimension_group: cultural_assets {
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
    sql: ${TABLE}."CULTURAL_ASSETS_DATE" ;;
  }

  dimension: cultural_assets_eng {
    type: string
    sql: ${TABLE}."CULTURAL_ASSETS_ENG" ;;
  }

  dimension: cultural_assets_kana {
    type: string
    sql: ${TABLE}."CULTURAL_ASSETS_KANA" ;;
  }

  dimension: cultural_assets_popular_name {
    type: string
    sql: ${TABLE}."CULTURAL_ASSETS_POPULAR_NAME" ;;
  }

  dimension: cultural_assets_type {
    type: string
    sql: ${TABLE}."CULTURAL_ASSETS_TYPE" ;;
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

  dimension: explanation {
    type: string
    sql: ${TABLE}."EXPLANATION" ;;
  }

  dimension: explanation_eng {
    type: string
    sql: ${TABLE}."EXPLANATION_ENG" ;;
  }

  dimension: ext_number {
    type: string
    sql: ${TABLE}."EXT_NUMBER" ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}."IMAGE" ;;
  }

  dimension: image_license {
    type: string
    sql: ${TABLE}."IMAGE_LICENSE" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: member {
    type: string
    sql: ${TABLE}."MEMBER" ;;
  }

  dimension: no_ {
    type: string
    sql: ${TABLE}."NO" ;;
  }

  dimension: overview {
    type: string
    sql: ${TABLE}."OVERVIEW" ;;
  }

  dimension: overview_eng {
    type: string
    sql: ${TABLE}."OVERVIEW_ENG" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
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

  dimension: unit {
    type: string
    sql: ${TABLE}."UNIT" ;;
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
    drill_fields: [building_name, pref_name, cultural_assets_popular_name, city_name]
  }
}
