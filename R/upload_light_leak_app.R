upload_light_leak_app<-function(){
library(seastar)
shiny::shinyApp(
  shinyStar::upload_lightleak_qc_ui(),
  shinyStar::upload_lightleak_qc_server()
)
}
