
#################

## 02 - Figures

# Creation date: 2023-09-27 (by Jennifer Magel)
# Last updated: 2023-09-27 (by Jennifer Magel)

# Description: Script to create figures for the paper "Everybody loves penguins! Relationships between 
# bill and flipper length in three species of penguins from the Palmer Archipelago, Antarctica"

################# 

## SETUP

# Load necessary packages
library(palmerpenguins)
library(ggplot2)
library(cowplot)
library(dplyr)

# Load data
penguins <- read.csv("00_rawdata/penguins.csv")

# Set plotting parameters
theme_set(theme_bw() +
            theme(panel.grid.major = element_blank(), 
                  panel.grid.minor = element_blank()))

#################

## FIGURE 1 – Bill length vs. flipper length

# Create plot
p1 <- ggplot(penguins, aes(bill_length_mm, flipper_length_mm)) +    # specify data
  geom_point(aes(colour = species), size = 2.5, shape = 18) +       # add points (coloured by species)
  geom_smooth(method = "lm", aes(colour = species), se = FALSE) +   # add regression line (one for each species)
  xlab("Bill length (mm)") + ylab("Flipper length (mm)") +          # rename axis labels
  scale_colour_manual(values = c("darkorange", "purple", "cyan4"))  # specify point/line colours

# Save plot as a jpeg
jpeg(filename = "02_figures/figure_01.jpg",
     width = 5, height = 4, units = "in", res = 300)

p1

dev.off()

#################

## FIGURE 2 – Bill length across islands (for Adelie penguins)

# Create plot
p2 <- penguins %>% 
  filter(species == "Adelie") %>%                                 # filter 'penguins' data frame for only Adelie penguins
  ggplot(., aes(island, bill_length_mm)) +                        # specify data
  geom_boxplot(aes(fill = island)) +                              # add boxplot (coloured by island)
  xlab("Island") + ylab("Bill length (mm)") +                     # rename axis labels
  scale_fill_manual(values = c("#99CCFF", "#006699", "cyan3")) +  # specify box colours
  theme(legend.position = "none")


# Save plot as a jpeg
jpeg(filename = "02_figures/figure_02.jpg",
     width = 4, height = 4, units = "in", res = 300)

p2

dev.off()

