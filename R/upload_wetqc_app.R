upload_spotting_wet_qc<-function(){
library(seastar)
shiny::shinyApp(
  shinyStar::upload_wetqc_ui(),
  shinyStar::upload_wetqc_server()
)
}
