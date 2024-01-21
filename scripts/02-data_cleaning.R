#### Preamble ####
# Purpose: Cleans the raw Toronto homeless data from opendatatoronto
# Author: Tam Ly
# Date: 23 January 2024
# Contact: annatn.ly@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run "01-download_data.R" script

#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Clean data ####
raw_toronto_homeless <- read_csv("inputs/data/raw_toronto_homeless.csv")

cleaned_toronto_homeless <-
  raw_toronto_homeless |>
  clean_names() |>
  select(year_of_death, cause_of_death, age_group, gender, count
  )

#### Save data ####
write_csv(
  x = cleaned_toronto_homeless, 
  file = "outputs/data/cleaned_toronto_homeless.csv")
