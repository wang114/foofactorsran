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

Fortors in `R` are vectors of a finite length which takes on certain number of different values (levels). They are usually characters or numeric. Statistically, factors are refered as categorical variavles. We usually expect each level of the factor to appear multiple times in the vector, but it's upto the user how to construct the factor. Some really simple examples are:

`r     x <- c(1,2,3)     class(x)     factor(x)`

`age_group()` takes a numeric vector (age) which each element in the vector bigger than 0 and smaller than 120 to be a valid age. It returns a factor of the same length as the input and replaces each age by its agegroup. The age groups are defined as follows:

0\<x\<=14: "Children" 14\<x\<=24: "Youth" 24\<x\<=65: "Adult" 65\<x : "Senior"
