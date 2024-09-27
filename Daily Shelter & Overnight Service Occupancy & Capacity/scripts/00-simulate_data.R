#### Preamble ####
# Purpose: Simulates data
# Author: Manjun Zhu
# Date: 26 September 2024
# Contact: karmen.zhu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have simulated data
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
library(dplyr)

#### Simulate data ####
set.seed(251)

# Define the start and end date
start_date <- as.Date("2024-01-01")
end_date <- as.Date("2024-9-20")

# Set the number of random dates you want to generate
number_of_dates <- 300

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "2024-01-01"
    ),
    number_of_occupancy_capacity = rpois(n = number_of_dates, lambda = 115)
  )


# Test for negative numbers
data$number_of_occupancy_capacity |> min() <= 0
raw_data$service_user_count |> min() <= 0
raw_data$capacity_actual_bed |> min() <= 0
raw_data$capacity_funding_bed |> min() <= 0
raw_data$occupied_beds |> min() <= 0
raw_data$capacity_actual_room |> min() <= 0
raw_data$capacity_funding_room |> min() <= 0
raw_data$occupied_rooms |> min() <= 0

#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")

