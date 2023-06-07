view: replication_groups {
  sql_table_name: "INFORMATION_SCHEMA"."REPLICATION_GROUPS"
    ;;

  dimension: account_locator {
    type: string
    sql: ${TABLE}."ACCOUNT_LOCATOR" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: allowed_accounts {
    type: string
    sql: ${TABLE}."ALLOWED_ACCOUNTS" ;;
  }

  dimension: allowed_integration_types {
    type: string
    sql: ${TABLE}."ALLOWED_INTEGRATION_TYPES" ;;
  }

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
    sql: ${TABLE}."CREATED_ON" ;;
  }

  dimension: is_primary {
    type: yesno
    sql: ${TABLE}."IS_PRIMARY" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension_group: next_scheduled_refresh {
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
    sql: ${TABLE}."NEXT_SCHEDULED_REFRESH" ;;
  }

  dimension: object_types {
    type: string
    sql: ${TABLE}."OBJECT_TYPES" ;;
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}."ORGANIZATION_NAME" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: primary {
    type: string
    sql: ${TABLE}."PRIMARY" ;;
  }

  dimension: region_group {
    type: string
    sql: ${TABLE}."REGION_GROUP" ;;
  }

  dimension: replication_schedule {
    type: string
    sql: ${TABLE}."REPLICATION_SCHEDULE" ;;
  }

  dimension: secondary_state {
    type: string
    sql: ${TABLE}."SECONDARY_STATE" ;;
  }

  dimension: snowflake_region {
    type: string
    sql: ${TABLE}."SNOWFLAKE_REGION" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [name, account_name, organization_name]
  }
}
