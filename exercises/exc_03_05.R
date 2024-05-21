library(tidyverse)

iris <- tibble(iris)

iris

iris.Sepal <- iris %>%
  select(Sepal.Length, Sepal.Width, Species) %>%
  nest(Sepal.Lengths = Sepal.Length, Sepal.Widths = Sepal.Width)

iris.Sepal
