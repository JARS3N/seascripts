show<-function(fullnames=F){
  list.files(path=system.file(package="seascripts",path='scripts'),full.names=fullnames)
}
