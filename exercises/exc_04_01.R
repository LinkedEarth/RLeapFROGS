suppressMessages(library(ggplot2))

ggplot(data = iris, mapping = aes(x=Sepal.Width, y=Petal.Length, color=Species)) +
  geom_point()
