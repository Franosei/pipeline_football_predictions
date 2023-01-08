
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pipeline_football_predictions

<!-- badges: start -->
<!-- badges: end -->

The goal of pipeline_football_predictions is to predict all matches for
Germany teams in Bundesliga, Chanpions league and DFB Pokal. The final
result is save as a textfile name result.txt. There is also a
correlation plot of our variables.

To run this pipeline, you have to clone this repository:

Termial: git clone
<git@github.com>:Franosei/pipeline_football_predictions.git

R studio: Go to New Project $\rightarrow$ Version control $\rightarrow$
Git $\rightarrow$ copy and paste
“<git@github.com>:Franosei/pipeline_football_predictions.git” in the
Repository URL $\rightarrow$ Create Project.

To run this pipeline, you first have to run this

``` r
renv::activate
#> function (project = NULL, profile = NULL) 
#> {
#>     renv_consent_check()
#>     renv_scope_error_handler()
#>     project <- renv_project_resolve(project)
#>     renv_scope_lock(project = project)
#>     renv_profile_set(profile)
#>     renv_activate_impl(project = project, profile = profile, 
#>         version = NULL, restart = FALSE, quiet = FALSE)
#>     invisible(project)
#> }
#> <bytecode: 0x000001fc394d7a88>
#> <environment: namespace:renv>
renv::restore()
#> Retrieving 'https://api.github.com/repos/Franosei/Football_dataset_package/tarball/5a8e7b1a0f30d476ce2c0849a8a85b71f46c7dfa' ...
#>  OK [downloaded 9.3 Mb in 5.9 secs]
#> Installing leagueCR7 [0.1.0] ...
#>  OK [built from source]
#> Moving leagueCR7 [0.1.0] into the cache ...
#>  OK [moved to cache in 14 milliseconds]
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
#> ✔ skip pipeline [0.2 seconds]
```
