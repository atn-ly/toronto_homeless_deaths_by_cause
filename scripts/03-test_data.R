#### Preamble ####
# Purpose: Tests the cleaned Deaths of People Experiencing Homelessness dataset 
# Author: Tam Ly
# Date: 25 January 2024
# Contact: annatn.ly@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run the "02-data_cleaning.R" script and download the tidyverse package


#### Workspace setup ####
# Load packages
library(tidyverse)

# Read in cleaned data
cleaned_toronto_homeless <- read.csv(here::here("outputs/data/cleaned_toronto_homeless.csv"))

#### Test data ####

# Test number of unique observations
cleaned_toronto_homeless$year_of_death |>
  unique() |>
  length() == 7

cleaned_toronto_homeless$cause_of_death |>
  unique() |>
  length() == 10

cleaned_toronto_homeless$age_group |>
  unique() |>
  length() == 5

cleaned_toronto_homeless$gender |>
  unique() |>
  length() == 3

# Test bounds
cleaned_toronto_homeless$year_of_death |> min() == 2017
cleaned_toronto_homeless$year_of_death |> max() == 2023

# Test variable classes
cleaned_toronto_homeless$year_of_death |> class() == "integer"
cleaned_toronto_homeless$cause_of_death |> class() == "character"
cleaned_toronto_homeless$age_group |> class() == "character"
cleaned_toronto_homeless$gender |> class() == "character"
cleaned_toronto_homeless$count |> class() == "integer"
