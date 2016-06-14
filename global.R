# Golbal environment contains information needed in both the ui and server scripts
# Lines 3-6 should be in all global.R scripts for shiny/plotly Apps
library(plotly)
library(shiny)
library(dplyr)

py <- plot_ly(username="ranausman", key="rqcetwyeqk")

source("plotlyGraphWidget.R")

# User Specific information:
# Load data
## In this example, data is used in both the ui and server scripts
Ideal_Point_Data <- read.csv("Data/shootingdata.csv", stringsAsFactors=F)

