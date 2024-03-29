#### Preamble ####
# Purpose: Downloads and saves the Toronto homeless dataset from opendatatoronto
# Author: Tam Ly
# Date: 25 January 2024
# Contact: annatn.ly@mail.utoronto.ca
# License: MIT
# Pre-requisites: Install the opendatatoronto and tidyverse packages

#### Workspace setup ####
# Load packages
library(opendatatoronto)
library(tidyverse)

#### Download data ####
raw_toronto_homeless <-
  list_package_resources("a7ae08f3-c512-4a88-bb3c-ab40eca50c5e") |> 
  filter(name == "Homeless deaths by cause.csv") |> 
  get_resource()

#### Save data ####
write_csv(
  x = raw_toronto_homeless, 
  file = "inputs/data/raw_toronto_homeless.csv"
) 
