connection: "qai_de_looker_training_prod_q03374_pooja_mishra"

# include all the views
include: "/views/**/*.view"

datagroup: test_pooja_mishra_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_pooja_mishra_default_datagroup

explore: dialogflow_cleaned_logs {}
