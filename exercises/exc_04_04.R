#load libraries
suppressMessages(library(mapproj))
suppressMessages(library(maps))
suppressMessages(library(tidyverse))

earthquakes = read.csv("https://raw.githubusercontent.com/LinkedEarth/RLeapFROGS/binder/public/module2/recent_earthquakes.csv")

world_map = map_data("world") %>% 
  filter(! long > 180)

countries = world_map %>%
  distinct(region) %>%
  rowid_to_column()

countries %>%
  ggplot(aes(map_id = region)) +
  geom_map(map = world_map) +
  expand_limits(x = world_map$long, y = world_map$lat) +
  coord_map("moll") +
  geom_point(data=earthquakes, mapping = aes(x=longitude, y=latitude, color=mag, size=mag),inherit.aes = FALSE) +
  scale_colour_gradient(low = "#808080", high = "#FF0000") +
  theme(legend.position = "bottom") +
  ggtitle("Earthquakes above magnitude 2.5, 23 April 2024 - 22 May, 2024")
