#load necessary libraries
library(ggplot2)

#Import data
read.csv("https://raw.githubusercontent.com/LinkedEarth/RLeapFROGS/binder/static/module3/lr04.csv")

#Initial viz
ggplot(data = lr04, mapping = aes(x=Year,y=d18O))+geom_line() + scale_y_reverse() +
  labs(title = "57 globally distributed benthic δ18O records, Lisiecki et al., 2005",
       x = "Year (ky BP)",
       y = "\u03B418O (\u2030)") +
  theme_light()
