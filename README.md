
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
<https://app.animalcrossingexchange.com/turnips/traders> :

``` r
turnips()
#> # A tibble: 41 x 7
#>    price waiters time  grade voters line      tags         
#>    <dbl>   <dbl> <chr> <dbl>  <dbl> <chr>     <chr>        
#>  1   655       0 0m      100     10 Line Full No tag       
#>  2   615      32 1.6h    100      7 Join Line No tag       
#>  3   592      10 1.2h    100      6 Line Full No tag       
#>  4   588       0 0m       96     26 Line Full No tag       
#>  5   583       2 8m       42      7 Join Line Tips Required
#>  6   581      22 1.4h     90     75 Line Full No tag       
#>  7   577      38 5.3h     73     26 Join Line No tag       
#>  8   576      10 1.2h    100      3 Line Full No tag       
#>  9   570       5 25m      96    123 Join Line Tips Required
#> 10   566      17 1.0h    100     26 Line Full No tag       
#> # … with 31 more rows
```
