#### Preamble ####
# Purpose: Simulate injury rate data in Canada
# Author: Missy Zhang
# Data: 16 April 2023
# Contact: mengze.zhang@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(456)

datasimu <- data.frame(
  Industry = rep(c("A", "B", "C", "D"), each = 5),
  Year = rep(2020:2016, 4),
  injury_rate = sample(1:50, 20, replace = TRUE)
)



