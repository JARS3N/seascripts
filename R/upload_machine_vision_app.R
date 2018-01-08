upload_machine_vision_app<-function(){
library(seastar)
shiny::shinyApp(
  shinyStar::details_upload_ui(),
  shinyStar::details_upload_server()
  )
}
