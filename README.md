foofactorsran
-------------

### Introduction

This is a mini package built by Ran Wang by extending the foofactors packages from STAT547 class. It focused on tools for working with factors. The functions `fbind()` and `freq_out()` already existed in the original `foofactors` package. Their tests and function documentations were also carried over. The goals of this package are:

-   Reorder the factor levels as they appear in the data `order_asit()`
-   Set order of the factor levels `factor_level()`
-   Combine factor levels `fbind()`
-   Define age group for numerical ages `age_group()`
-   Make a frequency table for a factor `freq_out()`

You can install:

this package like other packages by:

``` r
install_github("wang114/foofactorsran")
```

Note that some functions in this packages requires `dplyr`.

### Learning foofactorsran

To get started, read the notes on this page and read into `vignette:hello-foofactorsran` for details.

Factors in `R` are vectors of a finite length which takes on certain number of different values (levels). They are usually characters or numeric. Statistically, factors are referred as categorical variables. We usually expect each level of the factor to appear multiple times in the vector, but it's up to the user how to construct the factor.

Some really simple examples are:

``` r
 x <- c(1,2,2,"a","a")
    class(x)
```

    ## [1] "character"

``` r
    (y1 <- factor(x))
```

    ## [1] 1 2 2 a a
    ## Levels: 1 2 a

``` r
    (y2 <- factor(x, labels = c("red","blue","apple")))
```

    ## [1] red   blue  blue  apple apple
    ## Levels: red blue apple

``` r
    (y3 <- factor(x, levels = c("1","2","a","b")))
```

    ## [1] 1 2 2 a a
    ## Levels: 1 2 a b

``` r
    levels(y1)
```

    ## [1] "1" "2" "a"

``` r
    levels(y2)
```

    ## [1] "red"   "blue"  "apple"

Factors are confusing in a lot of ways. The levels of a factor are the possible values that the vector x will take, so `x%in%levels==FALSE` does not make sense in general. However, levels of x may not be all appeared in x, and `droplevels()` is the functions that drops the unused levels of x. The labels argument replaces each element of x by labeling the levels of x.

The order of the factor levels matter a lot, especially in plots. The default order of factor levels is alphabetical, which is meaningless under a lot of situations. Functions in this package will help you to reorder factor levels in a much easy way.

Please also read [Be the boss of your factors](http://stat545-ubc.github.io/block014_factors.html) to learn more about factors in `R`.
