outliers_app<-function(){
  library(seastar)
  shiny::shinyApp(
    shinyStar::outliers_ui(),
    shinyStar::outliers_server()
  )
}
