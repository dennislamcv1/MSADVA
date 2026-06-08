# ================================================
# Sample Project 1: Sales Performance Prediction
# ================================================

# Load required packages
library(tidyverse)     # Data manipulation and visualization
library(broom)         # Tidying model outputs
library(car)           # Diagnostic tools for linear models


# Load dataset
sales_df <- read_csv("sales_performance_s1.csv")

# ================================================
# Activity 1: Prepare and Explore the Data
# ================================================

# Step 1: Check structure and summary
str(sales_df)
summary(sales_df)

# Step 2: Identify and remove missing values
# < YOUR CODE HERE >

# Step 3: Compute mean and standard deviation
# < YOUR CODE HERE >

# ================================================
# Activity 2: Visualize the Data
# ================================================

# Step 1: Histogram of SalesAmount
# plot_1 <- # < YOUR CODE HERE >
# print(plot_1)

# Step 2: Boxplot of SalesAmount by Region
# plot_2 <- # < YOUR CODE HERE >
# print(plot_2)

# Step 3: Scatterplot of UnitsSold vs. SalesAmount, colored by Region
# plot_3 <- # < YOUR CODE HERE >
# print(plot_3)


# ================================================
# Activity 3: Build a Regression Model
# ================================================

# Step 1: Simple regression model
# < YOUR CODE HERE >

# Step 2: Multiple regression model
# < YOUR CODE HERE >
