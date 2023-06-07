view: population_by_region_and_age {
  sql_table_name: "RECOMMENDED_DATA_SETS"."POPULATION_BY_REGION_AND_AGE"
    ;;

  dimension: city_code {
    type: string
    sql: ${TABLE}."CITY_CODE" ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}."CITY_NAME" ;;
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

  dimension: female_ages_0_to_4_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_0_TO_4_COUNT" ;;
  }

  dimension: female_ages_100_over_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_100_OVER_COUNT" ;;
  }

  dimension: female_ages_10_to_14_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_10_TO_14_COUNT" ;;
  }

  dimension: female_ages_15_to_19_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_15_TO_19_COUNT" ;;
  }

  dimension: female_ages_20_to_24_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_20_TO_24_COUNT" ;;
  }

  dimension: female_ages_25_to_29_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_25_TO_29_COUNT" ;;
  }

  dimension: female_ages_30_to_34_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_30_TO_34_COUNT" ;;
  }

  dimension: female_ages_35_to_39_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_35_TO_39_COUNT" ;;
  }

  dimension: female_ages_40_to_44_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_40_TO_44_COUNT" ;;
  }

  dimension: female_ages_45_to_49_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_45_TO_49_COUNT" ;;
  }

  dimension: female_ages_50_to_54_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_50_TO_54_COUNT" ;;
  }

  dimension: female_ages_55_to_59_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_55_TO_59_COUNT" ;;
  }

  dimension: female_ages_5_to_9_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_5_TO_9_COUNT" ;;
  }

  dimension: female_ages_60_to_64_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_60_TO_64_COUNT" ;;
  }

  dimension: female_ages_65_to_69_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_65_TO_69_COUNT" ;;
  }

  dimension: female_ages_70_to_74_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_70_TO_74_COUNT" ;;
  }

  dimension: female_ages_75_to_79_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_75_TO_79_COUNT" ;;
  }

  dimension: female_ages_80_to_84_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_80_TO_84_COUNT" ;;
  }

  dimension: female_ages_85_to_89_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_85_TO_89_COUNT" ;;
  }

  dimension: female_ages_90_to_94_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_90_TO_94_COUNT" ;;
  }

  dimension: female_ages_95_to_99_count {
    type: number
    sql: ${TABLE}."FEMALE_AGES_95_TO_99_COUNT" ;;
  }

  dimension: female_population_total {
    type: number
    sql: ${TABLE}."FEMALE_POPULATION_TOTAL" ;;
  }

  dimension: households_count {
    type: number
    sql: ${TABLE}."HOUSEHOLDS_COUNT" ;;
  }

  dimension: male_ages_0_to_4_count {
    type: number
    sql: ${TABLE}."MALE_AGES_0_TO_4_COUNT" ;;
  }

  dimension: male_ages_100_over_count {
    type: number
    sql: ${TABLE}."MALE_AGES_100_OVER_COUNT" ;;
  }

  dimension: male_ages_10_to_14_count {
    type: number
    sql: ${TABLE}."MALE_AGES_10_TO_14_COUNT" ;;
  }

  dimension: male_ages_15_to_19_count {
    type: number
    sql: ${TABLE}."MALE_AGES_15_TO_19_COUNT" ;;
  }

  dimension: male_ages_20_to_24_count {
    type: number
    sql: ${TABLE}."MALE_AGES_20_TO_24_COUNT" ;;
  }

  dimension: male_ages_25_to_29_count {
    type: number
    sql: ${TABLE}."MALE_AGES_25_TO_29_COUNT" ;;
  }

  dimension: male_ages_30_to_34_count {
    type: number
    sql: ${TABLE}."MALE_AGES_30_TO_34_COUNT" ;;
  }

  dimension: male_ages_35_to_39_count {
    type: number
    sql: ${TABLE}."MALE_AGES_35_TO_39_COUNT" ;;
  }

  dimension: male_ages_40_to_44_count {
    type: number
    sql: ${TABLE}."MALE_AGES_40_TO_44_COUNT" ;;
  }

  dimension: male_ages_45_to_49_count {
    type: number
    sql: ${TABLE}."MALE_AGES_45_TO_49_COUNT" ;;
  }

  dimension: male_ages_50_to_54_count {
    type: number
    sql: ${TABLE}."MALE_AGES_50_TO_54_COUNT" ;;
  }

  dimension: male_ages_55_to_59_count {
    type: number
    sql: ${TABLE}."MALE_AGES_55_TO_59_COUNT" ;;
  }

  dimension: male_ages_5_to_9_count {
    type: number
    sql: ${TABLE}."MALE_AGES_5_TO_9_COUNT" ;;
  }

  dimension: male_ages_60_to_64_count {
    type: number
    sql: ${TABLE}."MALE_AGES_60_TO_64_COUNT" ;;
  }

  dimension: male_ages_65_to_69_count {
    type: number
    sql: ${TABLE}."MALE_AGES_65_TO_69_COUNT" ;;
  }

  dimension: male_ages_70_to_74_count {
    type: number
    sql: ${TABLE}."MALE_AGES_70_TO_74_COUNT" ;;
  }

  dimension: male_ages_75_to_79_count {
    type: number
    sql: ${TABLE}."MALE_AGES_75_TO_79_COUNT" ;;
  }

  dimension: male_ages_80_to_84_count {
    type: number
    sql: ${TABLE}."MALE_AGES_80_TO_84_COUNT" ;;
  }

  dimension: male_ages_85_to_89_count {
    type: number
    sql: ${TABLE}."MALE_AGES_85_TO_89_COUNT" ;;
  }

  dimension: male_ages_90_to_94_count {
    type: number
    sql: ${TABLE}."MALE_AGES_90_TO_94_COUNT" ;;
  }

  dimension: male_ages_95_to_99_count {
    type: number
    sql: ${TABLE}."MALE_AGES_95_TO_99_COUNT" ;;
  }

  dimension: male_population_total {
    type: number
    sql: ${TABLE}."MALE_POPULATION_TOTAL" ;;
  }

  dimension: no_ {
    type: string
    sql: ${TABLE}."NO" ;;
  }

  dimension: population_total {
    type: number
    sql: ${TABLE}."POPULATION_TOTAL" ;;
  }

  dimension: pref_name {
    type: string
    sql: ${TABLE}."PREF_NAME" ;;
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}."REGION_CODE" ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}."REGION_NAME" ;;
  }

  dimension: remark {
    type: string
    sql: ${TABLE}."REMARK" ;;
  }

  dimension_group: survey {
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
    sql: ${TABLE}."SURVEY_DATE" ;;
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

  measure: count {
    type: count
    drill_fields: [pref_name, city_name, region_name]
  }
}
