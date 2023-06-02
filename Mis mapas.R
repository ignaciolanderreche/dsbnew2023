library(ggplot2)
library(tmap)
library(sf)
library(rnaturalearth)

tmap_options(check.and.fix=TRUE)
world_shapefile <- ne_download(scale = "large", type = "countries", category = "cultural", returnclass = "sf")

selected_countries <- c("Mexico", "Spain", "China")
tm_shape(world_shapefile)+tm_polygons(col = "black", lwd = 0.5)+
  tm_fill(col = "blue", alpha = 0.7, subset = NAME ="Mexico") 


+
  tm_layout()









qtm(world)

tmap_mode("view")





+
  tm_symbols(col="black")

tm_shape(world)+tm_borders()

+tm_fill("blue",subset= c("name_long" =="Mexico"))+tm_borders()


+tm_layout()



  tm_facets(by = "year", nrow = 2, free.coords = FALSE)
  
  #####
  world_sf <- read_sf("path_to_shapefile/world_shapefile.shp")
  selected_countries <- c("Country1", "Country2", "Country3")
  tm_shape(world_sf) +
    tm_polygons(col = "black", lwd = 0.5) +
    tm_fill(col = "blue", alpha = 0.7, subset = NAME %in% selected_countries) +
    tm_layout()
  
  
  
