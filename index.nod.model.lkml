connection: "niigata_open_data_donut"
label: "新潟オープンデータ"
include: "/**/*.view" # include all the views.

# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
explore: replication_databases {
  join: replication_groups {
    type: left_outer
    relationship: many_to_many
    sql_on: ${replication_databases.account_name} = ${account_name} ;;
}
}
explore: city_master {
  join: events {
    type: left_outer
    relationship: many_to_many
    sql_on: ${city_master.city_code} = ${events.city_code} ;;
  }
}
