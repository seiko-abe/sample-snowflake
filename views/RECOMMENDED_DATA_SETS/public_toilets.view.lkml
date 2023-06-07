view: public_toilets {
  sql_table_name: "RECOMMENDED_DATA_SETS"."PUBLIC_TOILETS"
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

  dimension: equip_baby_toilets_flg {
    type: string
    sql: ${TABLE}."EQUIP_BABY_TOILETS_FLG" ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}."IMAGE" ;;
  }

  dimension: image_license {
    type: string
    sql: ${TABLE}."IMAGE_LICENSE" ;;
  }

  dimension: jp_style_men_toilets_count {
    type: number
    sql: ${TABLE}."JP_STYLE_MEN_TOILETS_COUNT" ;;
  }

  dimension: jp_style_unisex_toilets_count {
    type: number
    sql: ${TABLE}."JP_STYLE_UNISEX_TOILETS_COUNT" ;;
  }

  dimension: jp_style_women_toilets_count {
    type: number
    sql: ${TABLE}."JP_STYLE_WOMEN_TOILETS_COUNT" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}."LOCATION" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: men_toilets_total {
    type: number
    sql: ${TABLE}."MEN_TOILETS_TOTAL" ;;
  }

  dimension: multi_toilets_count {
    type: number
    sql: ${TABLE}."MULTI_TOILETS_COUNT" ;;
  }

  dimension: no_ {
    type: string
    sql: ${TABLE}."NO" ;;
  }

  dimension: ostomates_toilets_flg {
    type: string
    sql: ${TABLE}."OSTOMATES_TOILETS_FLG" ;;
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

  dimension: unisex_toilets_total {
    type: number
    sql: ${TABLE}."UNISEX_TOILETS_TOTAL" ;;
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

  dimension: urinal_count {
    type: number
    sql: ${TABLE}."URINAL_COUNT" ;;
  }

  dimension: western_style_men_toilets_count {
    type: number
    sql: ${TABLE}."WESTERN_STYLE_MEN_TOILETS_COUNT" ;;
  }

  dimension: western_style_unisex_toilets_count {
    type: number
    sql: ${TABLE}."WESTERN_STYLE_UNISEX_TOILETS_COUNT" ;;
  }

  dimension: western_style_women_toilets_count {
    type: number
    sql: ${TABLE}."WESTERN_STYLE_WOMEN_TOILETS_COUNT" ;;
  }

  dimension: wheelchair_toilets_flg {
    type: string
    sql: ${TABLE}."WHEELCHAIR_TOILETS_FLG" ;;
  }

  dimension: women_toilets_total {
    type: number
    sql: ${TABLE}."WOMEN_TOILETS_TOTAL" ;;
  }

  measure: count {
    type: count
    drill_fields: [building_name, city_name, pref_name]
  }
}
