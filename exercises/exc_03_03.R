suppressMessages(library(dplyr))

slice(iris,1:10)

select(iris,Sepal.Length)

iris %>% 
  slice(1:10) %>% 
  select(Sepal.Length)

iris %>% 
  filter(iris$Sepal.Length < 4.9 & iris$Sepal.Width > 2.8) %>%
  select(Species)
