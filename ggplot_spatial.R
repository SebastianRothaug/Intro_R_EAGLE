# oudatdated not finished
install.packages("rworldmap")

library(rworldmap)
library(ggplot2)

world <- getMap()

world
class(world)
plot(world)

world_sf = st_as_sf(world)
ger <- world[world_sf$name=="Germany" ,]


ggplot() + geom_polygon((data=ger), aes(x=long, y=lat, group = region, fill = value),
                        colour = "black", size = 0.1)+coord_map(xlim = c(=-13,35),ylim = c(32,71))

# oudatdated not finished



library(ggplot2)
library(sf)
library(maps)
library(rnaturalearth)

usa = st_as_sf(map('usa', plot = FALSE, fill = TRUE)) #USA Data from map transformed to sf
ggplot() + geom_sf(data=usa)


laea = st_crs("+proj=laea +lat_0=30 +lon_0=-95") # faster enter EPSG Code
usa <- st_transform(usa, laea)

ggplot() + geom_sf(data = usa)

ggplot() + geom_sf(data = usa, aes(fill = ID)) + scale_y_continuous()

world <- ne_countries(scale="medium",return="sf")
plot(world)

ggplot(data=world) + geom_sf(aes(fill = pop_est)) + scale_fill_viridis_c(option = "inferno", trans = "sqrt") +
  ggtitle("World Population")



#problem with usa for france it works
us_states <- ne_states(country="usa",return="sf") 
plot(us_states)

#elevation <- geodata::elevation_global(res = 10, download = T, path = 'C:/Users/User/Desktop/R_Course')
#plot(elevation)

#usa.r <- st_transform(elevation, st_crs(laea))

#elevation_usa_crop <- terra::crop(elevation, usa.r)
#plot(elevation_usa_crop)


### RASTER ###

install.packages("RStoolbox")

library(RStoolbox)
library(raster)
library(terra)

#lsat is a command for Landsat load in

lsat.df <- data.frame(crds(lsat), values(lsat))

ggplot(lsat.df)

lsat.df <- lsat.df[lsat.df$B3_dn!=0,]

ggplot(lsat.df) + geom_raster(aes(x=x,y=y, fill=B3_dn)) + scale_fill_gradient(na.value=NA) + coord_equal()

ggplot(lsat.df) + geom_raster(aes(x=x,y=y, fill=B3_dn)) + 
  scale_fill_gradient(low="black", high="white",na.value=NA) + coord_equal()

plot(lsat.df[[1]])

ggR(lsat, 1)

ggR(lsat, 1:6, geom_raster = TRUE)

ggRGB(lsat, 3, 2, 1, stretch = "lin")


ggR(lsat, 4, stretch = "lin")


ggR(lsat, layer = 4, maxpixels = 1e6, stretch = "hist")

ggR(lsat, layer = 1, stretch = "lin", geom_raster = TRUE) +
  scale_fill_gradient(low = "red", high = "green")


