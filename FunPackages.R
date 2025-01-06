install.packages("fun")
library(fun)

mine_sweeper()



install.packages("fortunes")
library(fortunes)
fortune("memory")

difftime("2024-12-24",Sys.Date(),units="days")

#week3 05.11.2024
#suntime calculation
install.packages("suncalc")
install.packages("V8")

library(suncalc)
library(V8)

getSunlightTimes(date = as.Date("2024-11-06") , lat =49.782332, lon =9.970187, tz ="CET")

#packages not official on CRAN but 
if(!require(devtools)) {install.packages(devtools)}
devtools::install_github("brooke-watson/BRRR")
library(BRRR)

skrrrahh("snoop")


#week4 12.11.2024 Arianne

# week5 19.11.2024

devtools::install_github("wilkelab/cowplot")
install.packages("colorspace", repos ="http://R-Forge.R-project.org")
devtools::install_github("clauswilke/colorblindr")

library(colorblindr)

colortest <- ggplot(data=world) + geom_sf(aes(fill = pop_est)) + scale_fill_viridis_c(option = "inferno", trans = "sqrt") +
  ggtitle("World Population")

cvd_grid(colortest)

# 03.12.2024

# To install the latest version from Github:
# install.packages("devtools")
devtools::install_github("tylermorganwall/rayrender")

library(rayrender)

library(ggplot2)

scene = generate_ground(material=diffuse(checkercolor="grey20")) %>%
add_object(sphere(y=0.2,material=glossy(color="#2b6eff",reflectance=0.05))) 
render_scene(scene, parallel = TRUE, width = 800, height = 800, samples = 256)

scene = generate_ground(material=diffuse(checkercolor="grey20")) %>%
  add_object(sphere(y=0.2,material=glossy(color="red",reflectance=0.05))) %>%
  add_object(obj_model(r_obj(),z=1,y=-0.05,scale_obj=0.6,material=diffuse())) %>%
  add_object(sphere(y=10,z=1,radius=4,material=light(intensity=8))) %>%
  add_object(sphere(z=15,material=light(intensity=70)))
render_scene(scene, parallel = TRUE, width = 800, height = 800, samples = 256, clamp_value=10)

x11()


# 10.12.2024
# Read instruction to some packages


# 17.12.2024
# Funpackages

install.packages("ggsoccer")

library(ggplot2)
library(ggsoccer)

ggplot() +
  annotate_pitch() +
  theme_pitch()


pass_data <- data.frame(x = c(24, 18, 64, 78, 53),
                        y = c(43, 55, 88, 18, 44),
                        x2 = c(34, 44, 81, 85, 64),
                        y2 = c(40, 62, 89, 44, 28))

ggplot(pass_data) +
  annotate_pitch() +
  geom_segment(aes(x = x, y = y, xend = x2, yend = y2),
               arrow = arrow(length = unit(0.25, "cm"),
                             type = "closed")) +
  theme_pitch() +
  direction_label() +
  ggtitle("Simple passmap", 
          "ggsoccer example")


# soccermatics
if (!require("devtools")) install.packages("devtools")
devtools::install_github("jogall/soccermatics")

devtools::install_github("statsbomb/StatsBombR")

library(dplyr)
library(StatsBombR)
library(soccermatics)

statsbomb %>% filter(team.name == "Argentina") %>% soccerPassmap(fill = "lightblue", arrow = "r", title = "Argentina (vs France, 30th June 2018)")

statsbomb %>%
  filter(team.name == "Argentina") %>%
  soccerPassmap(fill = "lightblue", arrow = "r",
                title = "Argentina (vs France, 30th June 2018)")

# pencil package

#download the dev version of cartography
devtools::install_github("riatelab/cartography")
library(cartography)
library(sf)
# import a vector layer (here a shapefile)
mtq <- st_read(system.file("shape/martinique.shp", package="cartography"))
# display this POLYGON layer
plot(st_geometry(mtq), col = 1:8)

