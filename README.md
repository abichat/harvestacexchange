
<!-- README.md is generated from README.Rmd. Please edit that file -->

# harvestacexchange <img src='man/figures/logo.png' align="right" height="139" />

<!-- badges: start -->

<!-- badges: end -->

**harvestacexchange** provides function to harvest
[animalcrossingexchange.com](https://app.animalcrossingexchange.com).

## Installation

You can install from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("abichat/harvestacexchange")
```

You need to have [Node.js](https://nodejs.org/) installed on your
computer.

## Harvesting

``` r
library(harvestacexchange)
```

The first time you use **harvestacexchange** in a project, you need to
install the JS dependencies.

``` r
install_js_dep()
```

You can harvest turnips prices from
<https://app.animalcrossingexchange.com/turnips/traders>

``` r
turnips()
#> # A tibble: 50 x 7
#>    price waiters time  grade voters line      tags         
#>    <dbl>   <dbl> <chr> <dbl>  <dbl> <chr>     <chr>        
#>  1   644      91 6.4h    100      9 Line Full Tips Required
#>  2   629     165 11.7h   100      4 Join Line No tag       
#>  3   619      37 58m      NA      0 Line Full Tips Required
#>  4   612      62 4.4h    100      7 Line Full No tag       
#>  5   610      62 4.4h    100      5 Line Full No tag       
#>  6   610      63 5.2h    100      4 Line Full Tips Required
#>  7   595      28 1.3h    100      2 Join Line Tips Required
#>  8   592      39 1.5h     NA      0 Join Line Tips Required
#>  9   588      23 1.2h    100      8 Line Full No tag       
#> 10   584      24 58m      NA      0 Join Line No tag       
#> # … with 40 more rows
```

and list of events from
<https://app.animalcrossingexchange.com/events/guests>

``` r
events()
#> # A tibble: 93 x 8
#>    event     waiters time    grade voters line    notice                   tags 
#>    <chr>       <dbl> <chr>   <dbl>  <dbl> <chr>   <chr>                    <chr>
#>  1 Villager…       0 Not St…    85      7 Join L… "Rocco is making armor … No t…
#>  2 Villager…       0 0m         NA      0 Join L… "Ohare is crafting a go… No t…
#>  3 Other           0 Not St…    NA      0 Join L… "Iâ\u0080\u0099ll craft… No t…
#>  4 Villager…       0 Not St…   100     11 Join L… "Marina is crafting a T… No t…
#>  5 Sahara          0 Not St…    NA      0 Join L… "Sahara is trapped righ… No t…
#>  6 Villager…       4 12m       100     53 Join L… "Rosie is crafting a sh… No t…
#>  7 Celeste         3 6m        100     26 Join L… "Welcome all! Celeste i… No t…
#>  8 Villager…      10 17m        95     42 Join L… "Norma is crafting CUTT… No t…
#>  9 Villager…       6 31m        93     15 Join L… "Paula is crafting a WO… No t…
#> 10 Shopping        0 0m         NA      0 Join L… "I have the following i… No t…
#> # … with 83 more rows
```
