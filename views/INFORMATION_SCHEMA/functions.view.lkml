view: functions {
  sql_table_name: "INFORMATION_SCHEMA"."FUNCTIONS"
    ;;

  dimension: api_integration {
    type: string
    sql: ${TABLE}."API_INTEGRATION" ;;
  }

  dimension: argument_signature {
    type: string
    sql: ${TABLE}."ARGUMENT_SIGNATURE" ;;
  }

  dimension: character_maximum_length {
    type: number
    sql: ${TABLE}."CHARACTER_MAXIMUM_LENGTH" ;;
  }

  dimension: character_octet_length {
    type: number
    sql: ${TABLE}."CHARACTER_OCTET_LENGTH" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }

  dimension: compression {
    type: string
    sql: ${TABLE}."COMPRESSION" ;;
  }

  dimension: context_headers {
    type: string
    sql: ${TABLE}."CONTEXT_HEADERS" ;;
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

  dimension: data_type {
    type: string
    sql: ${TABLE}."DATA_TYPE" ;;
  }

  dimension: function_catalog {
    type: string
    sql: ${TABLE}."FUNCTION_CATALOG" ;;
  }

  dimension: function_definition {
    type: string
    sql: ${TABLE}."FUNCTION_DEFINITION" ;;
  }

  dimension: function_language {
    type: string
    sql: ${TABLE}."FUNCTION_LANGUAGE" ;;
  }

  dimension: function_name {
    type: string
    sql: ${TABLE}."FUNCTION_NAME" ;;
  }

  dimension: function_owner {
    type: string
    sql: ${TABLE}."FUNCTION_OWNER" ;;
  }

  dimension: function_schema {
    type: string
    sql: ${TABLE}."FUNCTION_SCHEMA" ;;
  }

  dimension: handler {
    type: string
    sql: ${TABLE}."HANDLER" ;;
  }

  dimension: imports {
    type: string
    sql: ${TABLE}."IMPORTS" ;;
  }

  dimension: installed_packages {
    type: string
    sql: ${TABLE}."INSTALLED_PACKAGES" ;;
  }

  dimension: is_external {
    type: string
    sql: ${TABLE}."IS_EXTERNAL" ;;
  }

  dimension: is_memoizable {
    type: string
    sql: ${TABLE}."IS_MEMOIZABLE" ;;
  }

  dimension: is_null_call {
    type: string
    sql: ${TABLE}."IS_NULL_CALL" ;;
  }

  dimension: is_secure {
    type: string
    sql: ${TABLE}."IS_SECURE" ;;
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

  dimension: max_batch_rows {
    type: number
    sql: ${TABLE}."MAX_BATCH_ROWS" ;;
  }

  dimension: numeric_precision {
    type: number
    sql: ${TABLE}."NUMERIC_PRECISION" ;;
  }

  dimension: numeric_precision_radix {
    type: number
    sql: ${TABLE}."NUMERIC_PRECISION_RADIX" ;;
  }

  dimension: numeric_scale {
    type: number
    sql: ${TABLE}."NUMERIC_SCALE" ;;
  }

  dimension: packages {
    type: string
    sql: ${TABLE}."PACKAGES" ;;
  }

  dimension: request_translator {
    type: string
    sql: ${TABLE}."REQUEST_TRANSLATOR" ;;
  }

  dimension: response_translator {
    type: string
    sql: ${TABLE}."RESPONSE_TRANSLATOR" ;;
  }

  dimension: runtime_version {
    type: string
    sql: ${TABLE}."RUNTIME_VERSION" ;;
  }

  dimension: target_path {
    type: string
    sql: ${TABLE}."TARGET_PATH" ;;
  }

  dimension: volatility {
    type: string
    sql: ${TABLE}."VOLATILITY" ;;
  }

  measure: count {
    type: count
    drill_fields: [function_name]
  }
}
