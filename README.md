
<!-- README.md is generated from README.Rmd. Please edit that file -->

# scrapeacexchange

<!-- badges: start -->

<!-- badges: end -->

**scrapeacexchange** provides function to harvest
[animalcrossingexchange.com](https://app.animalcrossingexchange.com).

## Installation

You can install from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("abichat/scrapeacexchange")
```

## Harvesting

``` r
library(scrapeacexchange)
```

You can harvest turnips prices from
<https://app.animalcrossingexchange.com/turnips/traders> :

``` r
turnips()
#> # A tibble: 31 x 7
#>    price waiters time  grade voters line      tags         
#>    <dbl>   <dbl> <chr> <dbl>  <dbl> <chr>     <chr>        
#>  1   655       5 47m     100      6 Line Full No tag       
#>  2   636      97 8.5h    100     15 Join Line No tag       
#>  3   592      20 1.7h    100      4 Line Full No tag       
#>  4   588       7 30m      95     22 Line Full No tag       
#>  5   581      29 2.0h     91     69 Line Full No tag       
#>  6   577      24 2.9h     73     26 Join Line No tag       
#>  7   570       2 9m       96    118 Join Line Tips Required
#>  8   566      25 1.6h    100     21 Join Line No tag       
#>  9   559      30 1.7h    100     59 Join Line No tag       
#> 10   557       0 0m       93     33 Line Full No tag       
#> # … with 21 more rows
```
