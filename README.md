
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pipeline_football_predictions

<!-- badges: start -->
<!-- badges: end -->

The goal of pipeline_football_predictions is to predict all matches for
Germany teams in Bundesliga, Chanpions league and DFB Pokal. The final
result is save as a textfile name result.txt. There is also a
correlation plot of our variables.

To run this pipeline, you will need to install the follow package from
github and also from CRAN

``` r
remotes::install_github("Franosei/Football_dataset_package/leagueCR7")
remotes::install_github("Franosei/soccerCR7")
library(leagueCR7)
library(soccerCR7)
library(targets)
library(tidyverse)
library(reshape2)
library(dplyr)
library(ggplot2)
```

You can now run the pipeline simply with

``` r
targets::tar_make()
#> ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.2 ──
#> ✔ ggplot2 3.4.0      ✔ purrr   1.0.0 
#> ✔ tibble  3.1.8      ✔ dplyr   1.0.10
#> ✔ tidyr   1.2.1      ✔ stringr 1.5.0 
#> ✔ readr   2.1.3      ✔ forcats 0.5.2 
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
#> 
#> Attaching package: 'reshape2'
#> 
#> The following object is masked from 'package:tidyr':
#> 
#>     smiths
#> 
#> ✔ skip target Final_prediction
#> ✔ skip target Correlation_plot
#> ✔ skip target Germany
#> ✔ skip target Germany_correlation_plot
#> ✔ skip pipeline [0.22 seconds]
```
