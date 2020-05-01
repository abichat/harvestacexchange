
<!-- README.md is generated from README.Rmd. Please edit that file -->

# harvestacexchange

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
<https://app.animalcrossingexchange.com/turnips/traders> :

``` r
turnips()
#> # A tibble: 38 x 7
#>    price waiters time  grade voters line      tags         
#>    <dbl>   <dbl> <chr> <dbl>  <dbl> <chr>     <chr>        
#>  1   655       0 0m      100     10 Line Full No tag       
#>  2   615      29 1.6h    100      3 Join Line No tag       
#>  3   592      13 1.4h    100      6 Line Full No tag       
#>  4   588       4 17m      95     24 Line Full No tag       
#>  5   583       1 2m       20      5 Join Line Tips Required
#>  6   581      25 1.6h     90     73 Line Full No tag       
#>  7   577      32 4.3h     73     26 Join Line No tag       
#>  8   576      13 1.7h    100      2 Line Full No tag       
#>  9   570       7 36m      96    121 Join Line Tips Required
#> 10   566      20 1.2h    100     24 Join Line No tag       
#> # … with 28 more rows
```
