# set function for plotting babies per woman
# plot1 <- function(t){
#   tmp<-ggplot(data = t)+geom_point(mapping=aes(x=year,y=child_per,color=country))
#   return(tmp)
# }

# set function for plotting child mortality(0-5 year-olds dying per 1000 born)
# plot2 <- function(t2){
#   tmp<-ggplot(data = t2)+geom_point(mapping=aes(x=year,y=child_mortality,color=country))
#   return(tmp)
# }

#Summary of changes
  #Instead of having two functions, try combining the functions into 1 and make the yvar apart of the function. 
  #This way you can create one function, but call it twice. The user will just need to specify the data and the y - variable.
  
  #Additionally changed the chart to the line chart
plot3 <- function(t,yvar){
  tmp<-ggplot(data = t)+geom_line(mapping=aes(x=year,y={{yvar}},color=country))
  return(tmp)
}

