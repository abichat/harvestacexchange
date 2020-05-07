
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

### Harvest

You can harvest turnips prices from
<https://app.animalcrossingexchange.com/turnips/traders>

``` r
df_turnips <- turnips()
df_turnips
#> # A tibble: 47 x 7
#>    price waiters time  grade voters line      tags         
#>    <dbl>   <dbl> <chr> <dbl>  <dbl> <chr>     <chr>        
#>  1   644      87 6.2h    100     10 Line Full Tips Required
#>  2   629     170 11.0h   100      4 Join Line No tag       
#>  3   619      43 2.1h    100      2 Line Full Tips Required
#>  4   612      56 4.0h    100      7 Line Full No tag       
#>  5   610      58 3.9h    100      5 Line Full No tag       
#>  6   610      56 4.3h     83      6 Line Full Tips Required
#>  7   595      35 1.9h    100      2 Join Line Tips Required
#>  8   592      48 2.5h    100      2 Join Line Tips Required
#>  9   588      13 41m     100      9 Line Full No tag       
#> 10   584      46 5.0h    100      1 Join Line No tag       
#> # … with 37 more rows
```

and list of events from
<https://app.animalcrossingexchange.com/events/guests>

``` r
df_events <- events()
df_events
#> # A tibble: 82 x 8
#>    event     waiters time   grade voters line   notice                   tags   
#>    <chr>       <dbl> <chr>  <dbl>  <dbl> <chr>  <chr>                    <chr>  
#>  1 Villager…       0 Not S…    NA      0 Join … "Fuchsia is crafting a … No tag 
#>  2 Villager…       1 Not S…   100      4 Join … "I am crafting IRONWOOD… No tag 
#>  3 Shopping        0 0m       100      6 Join … "Leif is at my island! … No tag 
#>  4 Hangout         0 Not S…    92     90 Join … "looking for mama bear … No tag 
#>  5 Villager…       2 10m       50      2 Join … "Jeremiah is making a w… No tag 
#>  6 Sahara          0 Not S…    NA      0 Join … "first time hosting! pl… No tag 
#>  7 Other           0 Not S…    NA      0 Join … "Want to take my unwant… No tag 
#>  8 Shopping        9 22m      100      5 Join … "Free diy and fashion, … No tag 
#>  9 Villager…       3 Not S…    98     98 Join … "DOES ANYONE HAVE LEIF … No tag 
#> 10 Other           1 4m        NA      0 Join … "Mystery Bag Event! For… Tips R…
#> # … with 72 more rows
```

### Filter

**harvestacexchange** provides some useful filtering functions

``` r
df_turnips %>% 
  filter_price_min(price_min = 500) %>% 
  filter_no_tag()
#> # A tibble: 18 x 7
#>    price waiters time  grade voters line      tags  
#>    <dbl>   <dbl> <chr> <dbl>  <dbl> <chr>     <chr> 
#>  1   629     170 11.0h   100      4 Join Line No tag
#>  2   612      56 4.0h    100      7 Line Full No tag
#>  3   610      58 3.9h    100      5 Line Full No tag
#>  4   588      13 41m     100      9 Line Full No tag
#>  5   584      46 5.0h    100      1 Join Line No tag
#>  6   584      45 2.5h     96     26 Line Full No tag
#>  7   580      34 2.4h     96     59 Line Full No tag
#>  8   576      31 1.9h    100      4 Line Full No tag
#>  9   571      35 2.2h    100      3 Join Line No tag
#> 10   559      32 2.3h    100      3 Join Line No tag
#> 11   544      25 1.5h    100      3 Join Line No tag
#> 12   533      14 51m     100      4 Line Full No tag
#> 13   527       5 17m     100      8 Join Line No tag
#> 14   523      14 53m     100      4 Join Line No tag
#> 15   519      19 34m     100      1 Join Line No tag
#> 16   510      10 33m     100      3 Join Line No tag
#> 17   507       6 18m     100      2 Join Line No tag
#> 18   506       0 0m      100      2 Line Full No tag

df_events %>% 
  filter_words("gold") %>% 
  filter_grade_min(grade_min = 90)
#> # A tibble: 8 x 8
#>   event     waiters time    grade voters line   notice                     tags 
#>   <chr>       <dbl> <chr>   <dbl>  <dbl> <chr>  <chr>                      <chr>
#> 1 Villager…       1 3m        100      9 Join … "Portia is crafting a Luc… No t…
#> 2 Other           0 Not St…    NA      0 Join … "Looking for gold boots a… No t…
#> 3 Shopping        0 0m        100     14 Join … "Ableâ\u0080\u0099s has t… No t…
#> 4 Villager…       0 0m         97    961 Join … "Purrl is crafting a GOLD… No t…
#> 5 Villager…       0 0m         98     70 Line … "Pietro is crafting â\u00… No t…
#> 6 Villager…       0 0m        100     19 Line … "Golden toilet by Cleo, s… No t…
#> 7 Other           1 47m       100      3 Join … "Giving 40k for Gold Nugg… No t…
#> 8 Villager…       0 0m        100     47 Line … "Eugene is crafting a GOL… No t…
```

You can also compare these data to old versions and keep only the new
lines with `filter_old_turnips()` and `filter_old_events()`.

### Telegram

If you have configured a [Telegram
bot](https://github.com/ebeneditos/telegram.bot), you can send messages
with `message_turnips()` and `message_events()`.
