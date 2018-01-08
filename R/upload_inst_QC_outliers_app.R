upload_inst_QC_outlier_app<-function(){
library(seastar)
shiny::shinyApp(
  shinyStar::inst_qc_ol_upload_ui(),
  shinyStar::inst_qc_ol_upload_server()
)
}
