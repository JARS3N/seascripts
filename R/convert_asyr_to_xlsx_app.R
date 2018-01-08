convert_asyr_to_xlsx_app<-function(){
library(seastar)
shiny::shinyApp(
  shinyStar::asyr_to_xl_ui(),
  shinyStar::asyr_to_xl_server()
  )
}
