library(dplyr)

iris %>%
  filter(iris$Sepal.Length < 4.9) %>%
  mutate(Petal.Width.Exp = log(Petal.Width)) %>%
  arrange(desc(Sepal.Width), .by_group = TRUE) %>%
  select(Sepal.Width, Petal.Width.Exp, Species)

