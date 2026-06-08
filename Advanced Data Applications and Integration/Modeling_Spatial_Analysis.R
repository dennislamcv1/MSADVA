# ================================================
# Ungraded Lab: Statistical Modeling and Spatial Analysis
# ================================================

# ================================================
# Load Packages and Dataset
# ================================================

library(tidyverse)     # For data wrangling and visualization
library(plotly)        # For interactive visualizations
library(stats)         # For modeling and statistical tests
library(lubridate)     # For working with date columns
library(broom)

# Load dataset
house_data <- read_csv("house_data.csv")


# ================================================
# Practice Challenge 1: Pattern Exploration and Correlation
# ================================================

# Step 1: Scatter plot of sqft_living vs price
# Be sure to add your plot into the provided variable,print, and "Run Source"
plot1 <- # YOUR CODE HERE
print(plot1)

# Step 2: Correlation coefficient between sqft_living and price
# YOUR CODE HERE

# Step 3: Contingency table of waterfront and view
# YOUR CODE HERE

# Step 4: Convert condition to numeric (if needed) and check correlation with grade
# YOUR CODE HERE

# ================================================
# Practice Challenge 2: Interactive and Spatial Visualizations
# ================================================

# Step 1: Interactive scatter plot (lat vs long, color = price)
# Step 2: Customize tooltips (zipcode, price, sqft_living)
# Step 3: Add title: "Seattle Housing Prices by Location"
# Step 4: Set marker size to 5
# Be sure to add your plot into the provided variable, print, and "Run Source"

plot2 <- # YOUR CODE HERE
print(plot2)

# ================================================
# Practice Challenge 3: Hypothesis Testing and Predictive Modeling
# ================================================

# Step 1: Shapiro-Wilk test on price
# YOUR CODE HERE

# Step 2: Two-sample t-test (waterfront == 1 vs 0)
# YOUR CODE HERE

# Step 3: Linear model (price ~ sqft_living)
# YOUR CODE HERE

# Step 4: Add regression line to scatter plot
# Be sure to add your plot into the provided variable,print, and "Run Source"
plot3 <- # YOUR CODE HERE
print(plot3)

# Step 5: Predict price for sample observations
# YOUR CODE HERE

# ================================================
# Practice Challenge 4: Advanced Modeling and Time Trends
# ================================================

# Step 1: Convert price to binary factor
# YOUR CODE HERE

# Step 2: Logistic regression model (price > median)
# YOUR CODE HERE

# Step 3: Use tidy() to display model output
# YOUR CODE HERE

# Step 4: Time series plot using date and price
# Be sure to add your plot into the provided variable,print, and "Run Source"
plot4 <- # YOUR CODE HERE
print(plot4)

# Step 5: Explore trends with rollmean() or decompose()
# YOUR CODE HERE
