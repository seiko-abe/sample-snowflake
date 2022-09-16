connection: "database_seikoabe"

include:"/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: web_site {
  join: web_sales {
    type: left_outer
    relationship: many_to_one
    sql_on: ${web_site.web_company_id} = ${web_sales.ws_net_paid} ;;
  }

  # join: inventory_items {
  #   type: left_outer
  #   relationship: many_to_one
  #   sql_on: ${inventory_items.id} = ${order_items.inventory_items.id} ;;
  # }
}
