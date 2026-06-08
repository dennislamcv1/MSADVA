# ================================================
# Ungraded Lab: Initial Analysis of NYC Taxi Trips
# Module 6
# ================================================

# ================================================
# Load Packages and Dataset
# ================================================

library(tidyverse)  # For data wrangling and visualization
library(stringr)    # For text manipulation

# Load dataset
zone_data <- read_csv("taxi_data.csv")

# ================================================
# Practice Challenge 1: Organizing and Checking for Issues
# ================================================

# Step 1: Use arrange() to sort the data by trip_distance
zone_data <- # YOUR CODE HERE

# Step 2: Use group_by() to count rate_code frequencies
rate_code_counts <- # YOUR CODE HERE

# Step 3: Use filter() to find rows where fare_amount is 0 but trip_distance is greater than 0
suspicious_fares <- # YOUR CODE HERE


# ================================================
# Practice Challenge 2: Data Preparation 
# ================================================

# Step 1: Remove rows with missing values using drop_na()
zone_data_clean <- # YOUR CODE HERE

# Step 2: Ensure pickup_location_id and dropoff_location_id are numeric
zone_data_clean <- zone_data_clean %>%
    # YOUR CODE HERE

# Step 3: Clean store_and_fwd_flag values using str_replace_all()
# Replace "N" with "No", "Y" with "Yes"
zone_data_clean <- zone_data_clean %>%
    # YOUR CODE HERE

# Step 4: Remove duplicate rows using distinct()
# YOUR CODE HERE


#================================================
# Practice Challenge 3: Summarizing and Visualizing Data
# ================================================

# Step 1: Count unique pickup and dropoff location IDs
unique_pickup <- # YOUR CODE HERE
unique_dropoff <- # YOUR CODE HERE

# Step 2: Summary statistics for trip_duration
# mean, median, min, max
summary <- # YOUR CODE HERE
mean <- # YOUR CODE HERE
median <- # YOUR CODE HERE
min <- # YOUR CODE HERE
max <- # YOUR CODE HERE

# Step 3: Use table() to count payment_type values
payment_type_count < # YOUR CODE HERE

# Step 4: Create a boxplot of fare_amount by payment_type
# Title: "Fare Amount by Payment Type"
plot1 <- # YOUR CODE HERE
print(plot1)

# Step 5: Create a histogram of trip_distance
# 30 bins, light blue fill, black border
# Title: "Distribution of Trip Distances"
plot2<- # YOUR CODE HERE
print(plot2)

# ================================================
# Practice Challenge 4: Exploring Relationships 
# ================================================

# Step 1: Calculate average tip_amount by payment_type
# YOUR CODE HERE

# Step 2: Compare average trip_duration across rate_code values
# YOUR CODE HERE

# Step 3: Compute correlation between trip_distance and string length of store_and_fwd_flag
# Create a helper column using str_length()
# Use cor() to compute the correlation
# YOUR CODE HERE
