foofactorsran
-------------

### Introduction

This is a mini package built by Ran Wang by extending the foofactors packages from STAT547 class. It focuessed on tools for working with factors. The functions `fbind()` and `freq_out()` already existed in the original `foofactors` package. Their tests and function documentaions were also carried over. The goals of this package are:

-   Reorder the factor levels as they appear in the data `order_asit()`
-   Set order of the factor levels `factor_level()`
-   Combine factor levels `fbind()`
-   Define age group for numerical ages `age_group()` \_ Make a frequence table for a factor `freq_out()`

You can install:

this package like other packages by:

    ``` r
    install.packages("foofactorsran")
    ```

Note that some functions in this packages requires `dplyr`.

### Learning foofactorsran

To get started, read the notes on this page and read into `vignette:hello-foofactorsran` for details.

Fortors in `R` are vectors of a finite length which takes on certain number of different values (levels). They are usually characters or numeric. Statistically, factors are refered as categorical variavles. We usually expect each level of the factor to appear multiple times in the vector, but it's upto the user how to construct the factor.

Some really simple examples are:

`r     x <- c(1,2,2,"a","a")     class(x)     (y1 <- factor(x))     (y2 <- factor(x, labels = c("red","blue","apple")))     (y3 <- factor(x, levels = c("1","2","a","b")))     levels(y1)     levels(y2)`

Factors are confusing in a lot of ways. The levels of a factor are the possible values that the vector x will take, so `x%in%levels==FALSE` does not make sense in general. However, levels of x may not be all appeared in x, and `droplevels()` is the functions that drops the unused levels of x. The lables argument replaces each element of x by labling the levels of x.

The order of the factor levels matter a lot, especially in plots. The default order of factor levels is alphabetical, which is meaningless under a lot of situation. Functions in this package will help you to reorder factor levels in a much easy way.

Please also read [Be the boss of your factors](http://stat545-ubc.github.io/block014_factors.html) to learn more about factors in `R`.
