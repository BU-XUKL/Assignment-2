# set function for plotting babies per woman
plot1 <- function(t){
  tmp<-ggplot(data = t)+geom_point(mapping=aes(x=year,y=child_per,color=country))
  return(tmp)
}

# set function for plotting child mortality(0-5 year-olds dying per 1000 born)
plot2 <- function(t2){
  tmp<-ggplot(data = t2)+geom_point(mapping=aes(x=year,y=child_mortality,color=country))
  return(tmp)
}



