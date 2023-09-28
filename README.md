# BIOL548T_penguins

**Date created:** 2023-09-07 (by Jennifer Magel)  
**Date last updated:** 2023-09-28 (by Jennifer Magel)

## Description
This repository contains all files (data, scripts, manuscript, etc.) pertaining to a reproducible mini-project completed as part of the BIOL 548T 'Productivity and Reproducibility in Ecology and Evolution' course at UBC. The project examines simple relationships between various morphometric variables (bill length, flipper length) for three species of penguins (Adelie, _Pygoscelis adeliae_; Chinstrap, _Pygoscelis antarcticus_; Gentoo, _Pygoscelis papua_) using data provided through the 'palmerpenguins' package in R.

## Directory structure
This repository is composed of the following directories. Please see each directory's _README and _DATA_DICTIONARY files (where applicable) for more detailed information about the files contained within the directory.

* **00_rawdata** – Contains the raw data obtained from the 'palmerpenguins' R package (please note that, as the data in 'palmerpenguins' has already been cleaned, there is no separate directory or file for cleaned data).  
* **01_scripts** – Contains scripts to download and save the data and to produce the manuscript figures.  
* **02_figures** – Contains .jpg versions of the manuscript figures.  
* **03_manuscript** – Contains a PDF version of the manuscript and all files required to produce the PDF using Rmarkdown.
* **99_preregistration** – Contains a PDF version of the study preregistration and the .Rmd document used to produce the file.
* **renv** – Contains files necessary for package management within the R project.

## Additional files
The main (root) directory contains the following additional files:

* **BIOL548T_penguins.Rproj** – R project file
* **renv.lock** – Saves a 'snapshot' of the packages and their versions associated with the R project.
