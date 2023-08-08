connection: "niigata_open_data_donut"
label: "新潟オープンデータ"
include: "/views/**/*.view.lkml" # include all the views.

# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
# explore: replication_databases {
#   join: replication_groups {
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${replication_databases.account_name} = ${account_name} ;;
# }
# }
explore: city_master {
  join: events {
    type: left_outer
    relationship: many_to_one
    sql_on: ${city_master.city_name} = ${city_name} ;;
  }
  join: designated_emergency_evacuation_sites {
    type: left_outer
    relationship: many_to_one
    sql_on: ${city_master.city_name} = ${city_name} ;;
  }
  join: child_care_facilities {
    type: left_outer
    relationship: many_to_one
    sql_on: ${city_master.city_name} = ${city_name} ;;
  }
  join: cultural_assets {
    type: left_outer
    relationship: many_to_one
    sql_on: ${city_master.city_name} = ${city_name} ;;
  }
  join: firewater_facilities {
    type: left_outer
    relationship: many_to_one
    sql_on: ${city_master.city_name} = ${city_name} ;;
  }
  join: medical_institutions {
    type: left_outer
    relationship: many_to_one
    sql_on: ${city_master.city_name} = ${city_name} ;;
  }
  join: nursing_care_service_offices {
    type: left_outer
    relationship: many_to_one
    sql_on: ${city_master.city_name} = ${city_name} ;;
  }
  join: population_by_region_and_age {
    type: left_outer
    relationship: many_to_one
    sql_on: ${city_master.city_name} = ${city_name} ;;
  }
  join: public_facilities {
    type: left_outer
    relationship: many_to_one
    sql_on: ${city_master.city_name} = ${city_name} ;;
  }
  join: public_toilets {
    type: left_outer
    relationship: many_to_one
    sql_on: ${city_master.city_name} = ${city_name} ;;
  }
  join: public_wireless_lan_access_points {
    type: left_outer
    relationship: many_to_one
    sql_on: ${city_master.city_name} = ${city_name} ;;
  }
  join: tourist_facilities {
    type: left_outer
    relationship: many_to_one
    sql_on: ${city_master.city_name} = ${city_name} ;;
  }
}
