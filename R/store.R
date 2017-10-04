store<-function(FROM_=file.choose()){
  TO_ <-system.file(package="seascript",path='scripts');
  file.copy(from=FROM_,to=TO_)
}
