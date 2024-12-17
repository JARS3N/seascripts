#shiny::runApp(seascripts::upload_spotting_wet_qc_app(),launch.browser=TRUE)
shiny::runApp(wetqc::ui(), wetqc::server(),launch.browser=TRUE)
