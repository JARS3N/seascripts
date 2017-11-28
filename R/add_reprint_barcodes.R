add_reprint_barcodes<-function(){
 lines<- c(
    "library(seastar)",
    "shiny::runApp(system.file(\"rePrintBarcodes\",package=\"shinyStar\"),launch.browser=TRUE)"
  )
path_loc<- file.path(system.file(package='seascripts',path='scripts'),'barcodes_reprint.R')
writeLines(lines,path_loc)
file.exists(path_loc)
}
