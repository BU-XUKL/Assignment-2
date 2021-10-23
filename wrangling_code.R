childnew<-function(child_per,child_mortality){
  child_mortality <- rename(child_mortality,country=1) 
  child_per <- rename(child_per,country=1)
  #change the name of first line to country
  #because the raw data has some extra sign in front of 'country'
  child_1<-pivot_longer(child_per,cols = -country,names_to = "year",values_to = "child_per")
  child_2<-pivot_longer(child_mortality,cols = -country,names_to = "year",values_to = "child_mortality")
  #change these two table into long table
  #because I want to draw a picture in (x=year,y for value)
  
  child<-inner_join(child_1,child_2,by=c("country","year"))
  
  child$year<-str_replace(child$year,"X","")
  child$year<-as.integer(child$year)
  child$year<-as.double(child$year)
  return(child)
}

