library(targets)
library(tidyverse)
library(reshape2)
library(soccerCR7)
library(leagueCR7)
library(dplyr)
library(ggplot2)
source("functions.R")

list(
  tar_target(
    Final_prediction,
    get_data()
  ),
  
  tar_target(
    Germany,
    trainCR7(leagueCR7,leagueCR7,league_name == "Bundesliga" | league_name == "Champions League" | league_name == "DFB Pokal")
  ),
  
  
  tar_target(
    Correlation_plot,
    make_plot(leagueCR7)
  ),
  
  tar_target(
    Germany_correlation_plot,
    save_plot("correlation.png", Correlation_plot),
    format = "file"
  )
)