# Ungraded Lab: Your First Logistic Model

# Install necessary packages (if not already installed)
# install.packages("tidyverse")
# install.packages("broom")

# Load required libraries
library(tidyverse)      # Data manipulation and visualization
library(broom)          # Tidy model outputs

# Load dataset
customers <- read_csv("your_first_logistic_model.csv")

# Review dataset
head(customers)
str(customers)
summary(customers)

# ================================================
# Activity 1: Fitting Your First Logistic Regression Model
# ================================================

# Fit a logistic regression model using glm()
# Use summary() to interpret coefficients
# Use tidy() to extract model details

# Example:
# model1 <- glm(Purchased ~ Age, data = customers, family = "binomial")
# summary(model1)
# tidy(model1)

# Try it Out #1: You’re asked to test whether Income is a significant predictor of purchase.
# Steps:
# - Build a model with Purchased as the outcome and Income as the predictor
# - Use summary() to review results
# - Use tidy() to interpret coefficients

# <YOUR CODE HERE>

# ================================================
# Activity 2: Adding More Predictors
# ================================================

# Add PriorPurchases to the model
# Check both coefficients and model summary

# Example:
# model2 <- glm(Purchased ~ Age + PriorPurchases, data = customers, family = "binomial")
# summary(model2)

# Try it Out #1: Now test a model that includes both Income and PriorPurchases.

# Steps:
# - Update the model formula to include both variables
# - Use summary() to review model output
# - Interpret how each factor contributes

# <YOUR CODE HERE>

# ================================================
# Activity 3: Working with Categorical Variables
# ================================================

# Convert Region to a factor
# Add it to your model
# Interpret the output

# Example:
# customers$Region <- as.factor(customers$Region)
# model3 <- glm(Purchased ~ Region, data = customers, family = "binomial")
# summary(model3)

# Try it Out #1: Now build a model using only Gender as the predictor.

# Steps:
# - Convert Gender to a factor
# - Build a model: Purchased ~ Gender
# - Interpret coefficient and direction
# - What’s the baseline group?

# <YOUR CODE HERE>

# ================================================
# Activity 4: Predicting Probabilities
# ================================================

# Create a new tibble with hypothetical inputs
# Use predict() with type = "response"
# Interpret output as probabilities

# Example:
# new_data <- tibble(Age = 45, PriorPurchases = 5 , Gender = "Male")
# model_4 <- glm(Purchased ~ Age + PriorPurchases + Gender, data = customers, family =  "binomial")
# predict(model4, newdata = new_data, type = "response")

# Try it Out #1: Use your best model to predict the probability of purchase for a new customer:

# Steps:
# - Create a new tibble with these values:
# - Age = 40,

# <YOUR CODE HERE>