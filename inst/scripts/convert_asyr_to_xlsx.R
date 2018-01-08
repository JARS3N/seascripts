library(seastar)
app<-shiny::shinyApp(
  shinyStar::asyr_to_xl_ui(),
  shinyStar::asyr_to_xl_server()
  )
shiny::runApp(app,launch.browser=TRUE)
