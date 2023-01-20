#load packages
library(palmerpenguins)
library(tidyverse)

#plot
ggplot(na.omit(penguins), 
       aes(x = flipper_length_mm, y = bill_length_mm,
           color = species, shape = species)) +
  geom_point() +
  scale_color_manual(values = c("Adelie" = "#FEA346", "Chinstrap" = "#B251F1", 
                                "Gentoo" = "#4BA4A4"))
scale_shape_manual(values = c("Adelie" = 19, "Chinstrap" = 17, "Gentoo" = 15))


#filter years
filtered_years <- penguins |> 
  filter(year %in% c(2007, 2009))

#make DT
DT::datatable(filtered_years)
