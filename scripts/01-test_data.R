#### Preamble ####
# Purpose: Test the simulated data
# Author: Missy Zhang
# Data: 16 April 2023
# Contact: mengze.zhang@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)


#### Test the simulated data ####

# Test that the data frame has 4 unique values in the `Industry` column

datasimu$Industry |>
  unique() == c( 
    "A", "B", "C", "D")

datasimu$Industry|>
  unique() |>
  length() == 4

# Test that the value in the `injury_rate` column is between 1 and 50, and is an integer

datasimu$injury_rate |> min() >= 1
datasimu$injury_rate |> max() <= 50
datasimu$injury_rate |> class()  == "integer"
