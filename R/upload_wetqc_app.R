upload_wetqc_app<-function(){
library(seastar)
shiny::shinyApp(
  shinyStar::upload_wetqc_ui(),
  shinyStar::upload_wetqc_server()
)
}
