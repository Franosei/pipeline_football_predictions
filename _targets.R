library(targets)
library(soccerCR7)
library(leagueCR7)
library(dplyr)
library(ggplot2)
source("functions.R")

list(
  tar_target(league_dataset, get_data())
)