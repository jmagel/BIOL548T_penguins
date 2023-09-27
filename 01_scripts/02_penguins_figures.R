
#################

## 02 - Figures

# Creator: Jennifer Magel
# Creation date: 2023-09-27
# Last updated: 2023-09-27

# Description: Script to create manuscript figures

################# 

## SETUP

# Load necessary packages
library(palmerpenguins)
library(ggplot2)
library(cowplot)

# Load data
penguins <- read.csv("00_rawdata/penguins.csv")

# Set plotting parameters
theme_set(theme_bw() +
            theme(panel.grid.major = element_blank(), 
                  panel.grid.minor = element_blank()))

#################

## FIGURE 1 – Bill length vs. flipper length

# Create plot
p1 <- ggplot(penguins, aes(bill_length_mm, flipper_length_mm)) + 
  geom_point(aes(colour = species), size = 2.5, shape = 18) +
  geom_smooth(method = "lm", aes(colour = species), se = FALSE) + 
  xlab("Bill length (mm)") + ylab("Flipper length (mm)") +
  scale_colour_manual(values = c("darkorange", "purple", "cyan4"))
  

# Save plot as a jpeg
jpeg(filename = "03_figures/figure_01.jpg",
     width = 5, height = 4, units = "in", res = 300)

p1

dev.off()

#################

## FIGURE 2 – Bill length vs. flipper length

# Create plot


# Save plot as a jpeg
jpeg(filename = "03_figures/figure_02.jpg",
     width = 5, height = 4, units = "in", res = 300)

p2

dev.off()

