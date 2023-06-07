view: external_tables {
  sql_table_name: "INFORMATION_SCHEMA"."EXTERNAL_TABLES"
    ;;

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
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
    sql: ${TABLE}."CREATED" ;;
  }

  dimension: file_format_name {
    type: string
    sql: ${TABLE}."FILE_FORMAT_NAME" ;;
  }

  dimension: file_format_type {
    type: string
    sql: ${TABLE}."FILE_FORMAT_TYPE" ;;
  }

  dimension_group: last_altered {
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
    sql: ${TABLE}."LAST_ALTERED" ;;
  }

  dimension_group: last_ddl {
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
    sql: ${TABLE}."LAST_DDL" ;;
  }

  dimension: last_ddl_by {
    type: string
    sql: ${TABLE}."LAST_DDL_BY" ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}."LOCATION" ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}."TABLE_CATALOG" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: table_owner {
    type: string
    sql: ${TABLE}."TABLE_OWNER" ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}."TABLE_SCHEMA" ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, file_format_name]
  }
}
