add_reprint_barcodes<-function(){
 lines<- c(
"shiny::runApp(seascripts::reprint_barcodes_app(),launch.browser=TRUE)"
  )
path_loc<- file.path(system.file(package='seascripts',path='scripts'),'barcodes_reprint.R')
writeLines(lines,path_loc)
file.exists(path_loc)
}
