#### Preamble ####
# Purpose: Simulates the deaths of people experiencing homelessness dataset 
# Author: Tam Ly
# Date: 25 January 2024
# Contact: annatn.ly@mail.utoronto.ca
# License: MIT
# Pre-requisites: Install the tidyverse package

#### Workspace setup ####
library(tidyverse) # load package

#### Simulate data ####
set.seed(302) # set seed for reproducibility

# simulate variables for year, cause of death, age, group, gender, and count
year_of_death <- sample(2017:2023, size = 253, replace = TRUE)

cause_of_death <- sample(
  x = c("Accident", "Cancer", "Cardiovascular Disease", "COVID-19", 
        "Drug Toxicity", "Homicide", "Other","Pneumonia", "Suicide",
        "Unknown/Pending"),
  size = 253,
  replace = TRUE
)

age_group <- sample(
  x = c("<20", "20-39", "40-59", "60+", "Unknown"),
  size = 253,
  replace = TRUE
)
  
gender <- sample(
  x = c("Female", "Male", "Unknown"),
  size = 253,
  replace = TRUE
)

count <- sample(1:40, size = 253, replace = TRUE)

# create simulated dataset with simulated variables
simulated_homeless_data <-
  tibble(
    year_of_death,
    cause_of_death,
    age_group,
    gender,
    count)

simulated_homeless_data

#### Test simulated data ####

# Test number of unique observations
simulated_homeless_data$year_of_death |>
  unique() |>
  length() == 7

simulated_homeless_data$cause_of_death |>
  unique() |>
  length() == 10

simulated_homeless_data$age_group |>
  unique() |>
  length() == 5

simulated_homeless_data$gender |>
  unique() |>
  length() == 3

# Test bounds
simulated_homeless_data$year_of_death |> min() == 2017
simulated_homeless_data$year_of_death |> max() == 2023

# Test variable classes
simulated_homeless_data$year_of_death |> class() == "integer"
simulated_homeless_data$cause_of_death |> class() == "character"
simulated_homeless_data$age_group |> class() == "character"
simulated_homeless_data$gender |> class() == "character"
simulated_homeless_data$count |> class() == "integer"
