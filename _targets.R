library(targets)
library(tidyverse)
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
  )
)