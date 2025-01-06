setwd("C:/Users/User/Desktop/R_Course/Intro_R_EAGLE/Data")

library(terra)
library(sf)
#read raster with terra
raster <- rast("DJIM300AltumBronnbachOrthomosaic_clipped.tif")

#read vector with terra
clip_layer <-  st_read("Bronnbacher_Kloster_Clip.gpkg", layer = "Bronnbacher_Kloster_Clip") # layer = weil Geopackage mehrere Layer beinhalten könnte

#reprojection
raster_repo <- project(raster, "epsg:3035")

#clipping = Rechteck Bounding Box des Cliping Layer
clipped_raster <- crop(raster_repo, clip_layer)
#masked = Original Cliping Layer
masked_raster <- mask(clipped_raster, clip_layer)


#plot with rgb
plotRGB(raster_repo,r= 3, g = 2, b = 1, stretch="lin") #stretch = stretching the histogram

plotRGB(clipped_raster,r= 3, g = 2, b = 1, stretch="lin")

plotRGB(masked_raster,r= 3, g = 2, b = 1, stretch="lin")

#Unsupervised classification
# k_means is in terra package
# centers is number of classes to detect
clustering <- k_means(masked_raster, centers = 5)
plot(clustering)


#Supervised classification
#read vector training data with terra
training_area <-  st_read("Training_Data.gpkg") #nur ein file deshalb kein layer = nötig
plot(training_area)
#Random Forest
library(RStoolbox)
supervised <- superClass(masked_raster, training_area)
plot(supervised$map) #$map to print this because output is defined as a list



#Starting our Analysis NOT Finished
ndvi <-  function(nir, red){
  ndvi <- (nir - red)/(nir + red)
  return(ndvi)
}

ndvi(3,6)


