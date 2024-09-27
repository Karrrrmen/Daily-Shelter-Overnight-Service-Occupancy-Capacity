#### Preamble ####
# Purpose: Sanity check of the data
# Author: Manjun Zhu
# Date: 26 September 2024
# Contact: karmen.zhu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have simulated data
# Any other information needed? None.


#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative numbers
data$number_of_occupancy_capacity |> min() <= 0
raw_data$service_user_count |> min() <= 0
raw_data$capacity_actual_bed |> min() <= 0
raw_data$capacity_funding_bed |> min() <= 0
raw_data$occupied_beds |> min() <= 0
raw_data$capacity_actual_room |> min() <= 0
raw_data$capacity_funding_room |> min() <= 0
raw_data$occupied_rooms |> min() <= 0

# Test for NAs
all(is.na(data$number_of_occupancy_capacity))
all(is.na(raw_data$SECTOR))

