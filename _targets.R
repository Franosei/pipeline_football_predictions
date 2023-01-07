library(targets)
library(tidyverse)
library(soccerCR7)
library(leagueCR7)
library(dplyr)
library(ggplot2)
source("functions.R")

list(
  tar_target(
    league_data,
    get_data()
  ),
  
  tar_target(
    Spain,
    trainCR7(leagueCR7,leagueCR7,league_name == "La Liga")
  ),
  
  tar_target(
    Germany,
    trainCR7(leagueCR7,leagueCR7,league_name == "Bundesliga")
  )
)