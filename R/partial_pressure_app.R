
partial_pressure_app<-function(){
    library(seastar)
    shiny::shinyApp(
      shinyStar::partial_pressure_ui(),
      shinyStar::partial_pressure_server()
    )
}
