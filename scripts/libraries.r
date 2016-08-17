# Install packages with pacman
if(!require("pacman")) install.packages("pacman")
p_load("data.table",
       "ggplot2")

# Load the packages installed with pacman
# If adding items to p_load above, make sure you also add them below!
library(data.table)
library(ggplot2)