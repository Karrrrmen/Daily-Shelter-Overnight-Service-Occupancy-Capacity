#### Preamble ####
# Purpose: Cleans the raw marriage data into an analysis dataset
# Author: Manjun Zhu
# Date: 26 September 2024
# Contact: karmen.zhu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have simulated data
# Any other information needed? None.

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |> 
  separate(col = occupancy_date,
            into = c("year", "month"),
            sep = "-") |> 
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-")))

#### New data ####
new <- select(raw_data, Gender, SERVICE_USER_COUNT)

# Rename
new <- new %>% rename(Gender = SECTOR)
raw_data <- raw_data %>% rename(Gender = SECTOR)
  
#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
