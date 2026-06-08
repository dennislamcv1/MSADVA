# ================================================
# Sample Project 2: Customer Behavior Prediction
# ================================================

# Load required packages
library(tidyverse)     # Data manipulation and visualization
library(broom)         # Tidying model outputs
library(car)           # Diagnostic tools for linear models

# Load dataset
customer_df <- read_csv("customer_behavior_s2.csv")

# ================================================
# Activity 1: Explore and Visualize the Data
# ================================================

# Step 1: Check structure and summary
str(customer_df)
summary(customer_df)

# Step 2: Remove missing values
# < YOUR CODE HERE >

# Step 3: Compute mean and standard deviation
# < YOUR CODE HERE >

# Step 4: Histogram of PurchaseAmount
# plot_1 <- # < YOUR CODE HERE >
# print(plot_1)

# Step 5: Scatterplot of Income vs. PurchaseAmount
# plot_2 <- # < YOUR CODE HERE >
# print(plot_2)

# Step 6: Boxplot of PurchaseAmount by AdClicks
# plot_3 <- # < YOUR CODE HERE >
# print(plot_3)

# ================================================
# Activity 2: Validate and Predict with a Regression Model
# ================================================

# Step 1: Build linear regression model
# < YOUR CODE HERE >

# Step 2: Check assumptions: residuals, normality, multicollinearity
# < YOUR CODE HERE >

# Step 3: Generate predictions with prediction intervals
# < YOUR CODE HERE >

# ================================================
# Activity 3: Build a Logistic Regression Model
# ================================================

# Step 1: Fit logistic regression model
# Ensure Subscribed is a binary factor
# < YOUR CODE HERE >

# Step 2: Predict subscription probability for new profile
# < YOUR CODE HERE >