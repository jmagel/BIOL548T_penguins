
#################

## 01 - 'palmerpenguins' data extraction

# Creator: Jennifer Magel
# Creation date: 2023-09-26
# Last updated: 2023-09-28

# Description: Script to extract and save necessary data from the 'palmerpenguins' R package

#################

# Load 'palmerpenguins' package
library(palmerpenguins)

# Load data frames from 'palmerpenguins' package
data(penguins)

# Save 'penguins' data frame as a .csv file in the 00_rawdata folder
write.csv(penguins, file = "00_rawdata/penguins.csv")
