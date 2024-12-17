#upload_spotting_wet_qc_app<-function(){
#library(seastar)
#shiny::shinyApp(
##  shinyStar::upload_wetqc_ui(),
#  shinyStar::upload_wetqc_server()
#)
#}
upload_spotting_wet_qc_app <- function() {
  library(seastar)
  library(wetqc)
  shiny::shinyApp(wetqc::ui(), wetqc::server())
}
