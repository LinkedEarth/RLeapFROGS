library(maps)
library(tidyverse)
earthquakes = data.frame(
  "long"=runif(30,0,360),
  "lat"=runif(30,-90,90),
  "magnitude"=runif(30,3,10)
)

world_map = map_data("world2")

countries = world_map %>%
  distinct(region) %>%
  rowid_to_column()

countries %>%
  ggplot(aes(map_id = region)) +
  geom_map(map = world_map) +
  expand_limits(x = world_map$long, y = world_map$lat) +
  coord_map("moll") +
  geom_point(data=earthquakes, mapping = aes(x=long, y=lat, color=magnitude, size=magnitude),inherit.aes = FALSE) +
  scale_colour_gradient(low = "#808080", high = "#FF0000") +
  theme(legend.position = "bottom") +
  ggtitle("Stange Earthquake Pattern")
