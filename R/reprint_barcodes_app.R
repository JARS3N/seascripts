reprint_barcodes_app<-function(){
library(seastar)
shiny::shinyApp(
  shinyStar::reprint_barcodes_ui(),
  shinyStar::reprint_barcodes_server()
)   
}
