
  install.packages("maps") 
install.packages("mapdata") 
install.packages("mapproj") 
install.packages("ggplot2") 

# Load libraries 
library(maps) 
library(mapdata) 
library(mapproj) 
library(ggplot2) 

# 1. Basic world map 
map("world")   # draws simple world map 

# 2. World map with colors 
map("world", 
    col = "lightblue",   # fill color 
    fill = TRUE,         # enables filling 
    bg = "white",        # background color 
    main = "World Map Visualization") 

# 3. Map of India 
map("world", 
    regions = "India",   # select India only 
    fill = TRUE, 
    col = "orange", 
    main = "Map of India") 


map("world", fill = TRUE, col = "lightgray") 

points( 
  x = c(77.2090,72.8777,80.2707),  # longitudes 
  y = c(28.6139,19.0760,13.0827),  # latitudes 
  col = "red", 
  pch = 19                          # solid circle 
) 

# 5. Add label to a point 
map("world", fill = TRUE, col = "lightyellow") 

points(77.2090,28.6139,pch=19,col="red")  # Delhi point 

text(77.2090,28.6139, 
     labels = "Delhi",   # name label 
     pos = 4)            # position of text 

# 6. ggplot world map 
world_map <- map_data("world")  # convert map to dataframe 

ggplot(world_map, aes(long, lat, group = group)) + 
  geom_polygon(fill = "lightblue", color = "black") +  # draw map 
  coord_fixed() +   # fix ratio 
  theme_minimal() 

# 7. Highlight India 
ggplot(world_map, aes(long, lat, group = group)) + 
  geom_polygon(fill = "lightgray", color = "black") + 
  geom_polygon(data = subset(world_map, region == "India"), 
               fill = "orange") +   # highlight India 
  coord_fixed() + 
  theme_minimal() 

# 8. Add cities using ggplot 
cities <- data.frame( 
  city = c("Delhi","Mumbai","Chennai"), 
  lon = c(77.2090,72.8777,80.2707), 
  lat = c(28.6139,19.0760,13.0827) 
) 

ggplot() + 
  geom_polygon(data = world_map, 
               aes(x = long, y = lat, group = group), 
               fill = "lightgray", color = "white") + 
  geom_point(data = cities, 
             aes(x = lon, y = lat), 
             color = "red", size = 3) +  # plot cities 
  coord_fixed(xlim = c(65,100), ylim = c(5,40)) +  # zoom India 
  theme_minimal() 

# 9. Projection map 
map("world", 
    proj = "orthographic",   # globe view 
    orientation = c(20,80,0)) 

# 10. US states map 
map("state", 
    fill = TRUE, 
    col = rainbow(50),   # different colors 
    main = "US State Map")