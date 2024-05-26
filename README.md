
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggcolrr

<!-- badges: start -->

[![R-CMD-check](https://github.com/bradfordjohnson/ggcolrr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/bradfordjohnson/ggcolrr/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of ggcolrr is to add a collection of custom, reproducible
ggplot2 themes to your R toolbox.

## Installation

You can install the development version of ggcolrr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("bradfordjohnson/ggcolrr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(tidyverse)
library(showtext)
library(ggcolrr)

mtcars %>%
  ggplot(aes(x=mpg,y=hp)) +
  geom_point() +
  labs(title="Example Light Theme") +
  theme_nord(light=TRUE,base_size=12)
```

<img src="man/figures/README-example-1.png" width="100%" />

``` r
mtcars %>%
  ggplot(aes(x=mpg,y=hp)) +
  geom_point() +
  labs(title="Example Dark Theme") +
  theme_nord(light=FALSE,base_size=12)
```

<img src="man/figures/README-cars-1.png" width="100%" />
