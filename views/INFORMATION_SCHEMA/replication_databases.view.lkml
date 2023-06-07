view: replication_databases {
  sql_table_name: "INFORMATION_SCHEMA"."REPLICATION_DATABASES"
    ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
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
    sql: ${TABLE}."CREATED" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  dimension: failover_allowed_to_accounts {
    type: string
    sql: ${TABLE}."FAILOVER_ALLOWED_TO_ACCOUNTS" ;;
  }

  dimension: is_primary {
    type: yesno
    sql: ${TABLE}."IS_PRIMARY" ;;
  }

  dimension: primary {
    type: string
    sql: ${TABLE}."PRIMARY" ;;
  }

  dimension: region_group {
    type: string
    sql: ${TABLE}."REGION_GROUP" ;;
  }

  dimension: replication_allowed_to_accounts {
    type: string
    sql: ${TABLE}."REPLICATION_ALLOWED_TO_ACCOUNTS" ;;
  }

  dimension: snowflake_region {
    type: string
    sql: ${TABLE}."SNOWFLAKE_REGION" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name, database_name]
  }
}
