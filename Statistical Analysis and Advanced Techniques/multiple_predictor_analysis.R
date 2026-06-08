# Ungraded Lab: Multiple Predictor Analysis

# Install necessary packages (if not already installed)
# install.packages("tidyverse")
# install.packages("broom")

# Load required libraries
library(tidyverse)      # Data wrangling and visualization

# Load dataset
housing <- read_csv("multiple_predictor_analysis.csv")

# Review structure
head(housing)
str(housing)
summary(housing)

# ================================================
# Activity 1: Simple Linear Regression
# ================================================

# Build a simple linear regression model with Price as the outcome and SquareFeet as the predictor.
# Summarize and interpret the output.

# Example:
# model1 <- lm(Price ~ SquareFeet, data = housing)
# summary(model1)
# tidy(model1)

# Try it Out #1: You're now asked to test whether the number of bedrooms is a strong predictor of house price.

# Steps:
# - Build a linear model: Price ~ Bedrooms
# - Use summary() to review the results
# - Use tidy() to present model coefficients

# <YOUR CODE HERE>

# ================================================
# Activity 2: Multiple Regression
# ================================================

# Build a model using SquareFeet, Bedrooms, and Bathrooms
# Summarize and interpret the coefficients
# Check the adjusted R-squared to assess improvement

# Example:
# model2 <- lm(Price ~ SquareFeet + Bedrooms + Bathrooms, data = housing)
# summary(model2)
# tidy(model2)

# Try it Out #1: Now, include Age to test whether older homes sell for more or less.

# Steps:
# - Update your model: add Age,SquareFeet, Bedrooms, and Bathrooms
# - Use summary() to examine significance
# - Compare the adjusted R-squared before and after adding Age

# <YOUR CODE HERE>

# ================================================
# Activity 3: Handling Categorical Predictors
# ================================================

# Convert data into a factor if it's not already (as needed)
# Add it to the model and observe how it impacts the outcome
# Interpret the baseline and comparison levels

# Example:
# housing$Region <- as.factor(housing$Region)
# model3 <- lm(Price ~ Region, data = housing)
# summary(model3)
# tidy(model3)


# Try it Out #1: How much of the price variation is explained by LocationQuality alone?

# Steps:
# - Run a model with just LocationQuality as the predictor.
# - Interpret coefficients and R-squared

# <YOUR CODE HERE>

# ================================================
# Activity 4: Interaction Effects
# ================================================

# Use * in your formula to include an interaction
# Summarize and interpret the interaction term

# Example:
# model4 <- lm(Price ~ SquareFeet * LocationQuality, data = housing)
# summary(model4)
# tidy(model4)

# Try it Out #1: Now you're ready to build a full model that includes:

# Steps:
# - Add an interaction term between Bathrooms and LocationQuality on top of SquareFeet, Bedrooms, Bathrooms , Age, and LocationQuality as predictors
# - Interpret how the effect changes across groups

# <YOUR CODE HERE>
