#### Preamble ####
# Purpose: Clean the raw data
# Author: Missy Zhang
# Data: 27 March 2023
# Contact: mengze.zhang@mail.utoronto.ca
# License: MIT



#### Workspace setup ####
library(tidyverse)


#### Clean data ####
raw_data <- read_csv("inputs/data/raw_data.csv")

cleaned_data <- subset(raw_data, !(`Operational Activity` %in% c("On-board", "Off-board"))) |>
  select(Industry,
         Year,
         'Injury Frequency Rate (6)') |>
  rename(injury_frequency_rate = 'Injury Frequency Rate (6)')


#### Save data ####
write_csv(cleaned_data, "outputs/data/cleaned_data.csv")

