
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

## Harvesting

``` r
library(harvestacexchange)
```

You can harvest turnips prices from
<https://app.animalcrossingexchange.com/turnips/traders>:

``` r
turnips()
#> # A tibble: 36 x 7
#>    price waiters time        grade voters line      tags         
#>    <dbl>   <dbl> <chr>       <dbl>  <dbl> <chr>     <chr>        
#>  1   622      42 2.9h          100     13 Line Full No tag       
#>  2   599      29 1.6h          100     16 Line Full No tag       
#>  3   588      55 2.0h          100      4 Join Line No tag       
#>  4   588      16 1.0h          100      9 Line Full Tips Required
#>  5   584       0 0m             33      3 Join Line Tips Required
#>  6   571      11 51m           100      9 Line Full No tag       
#>  7   566       0 0m             95     44 Line Full No tag       
#>  8   565      24 1.1h           97     37 Line Full No tag       
#>  9   561      14 Not Started    NA      0 Join Line No tag       
#> 10   557       0 0m             93     33 Line Full No tag       
#> # … with 26 more rows
```

and list of events from
<https://app.animalcrossingexchange.com/events/guests>:

``` r
events()
#> # A tibble: 45 x 8
#>    event     waiters time  grade voters line    notice                   tags   
#>    <chr>       <dbl> <chr> <dbl>  <dbl> <chr>   <chr>                    <chr>  
#>  1 Celeste         9 50m     100      4 Join L… "METEOR SHOWER! No Cele… No tag 
#>  2 Villager…      11 45m     100     39 Line F… "Zucker is crafting ZEN… No tag 
#>  3 Villager…       4 20m      75     12 Join L… "My villager Penelope i… Tips R…
#>  4 Catalog …       7 1.2h    100     85 Line F… "Entry fee: 2NMTs\n(I n… Tips R…
#>  5 Hangout         0 0m        0      1 Join L… "This is my first time … No tag 
#>  6 Celeste         6 20m     100     15 Join L… "Celeste is in town & n… No tag 
#>  7 Villager…      22 1.9h     97    713 Join L… "My girl Judy is crafti… No tag 
#>  8 Villager…       8 31m      86     30 Join L… "Ed is crafting a Fancy… No tag 
#>  9 Villager…       0 0m      100    106 Join L… "No we have Rolf crafti… No tag 
#> 10 Villager…       3 9m       94     34 Join L… "BILLY IS CRAFTING BEEK… No tag 
#> # … with 35 more rows
```
