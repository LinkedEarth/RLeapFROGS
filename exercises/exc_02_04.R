substring("hello",1,3)

text1 <- "hello"
text1 <- substring(text1,1,3)
text1

firstLetter <- function(string){
  string <- substring(string,1,1)
  return(string)
}

firstLetter("alphabet")
