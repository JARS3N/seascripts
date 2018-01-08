upload_dryqc_app<-function(){
library(seastar)
shiny::shinyApp(
  shinyStar::dryqc_upload_ui(),
  shinyStar::dryqc_upload_server()
)
}
