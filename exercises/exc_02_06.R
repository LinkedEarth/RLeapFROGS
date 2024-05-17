#extract first letter of a string or its posiion in the alphabet
firstLetter <- function(string,place=FALSE){
  #get the first letter
  string <- substring(string,1,1)
  if(place){
    #return the position instead of the letter itself
    string <- which(letters==tolower(string))
    }
  return(string)
}
