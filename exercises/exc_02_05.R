firstLetter <- function(string,place=FALSE){
  string <- substring(string,1,1)
  if(place){
    string <- which(letters==tolower(string))
    }
  return(string)
}

firstLetter("zebra", place=TRUE)
