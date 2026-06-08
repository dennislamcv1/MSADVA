# Ungraded Lab: Building Complex Models

# Install necessary packages (if not already installed)
# install.packages("tidyverse")
# install.packages("broom")

# Load required libraries
library(tidyverse)      # Data manipulation and visualization
library(broom)          # Converts model outputs into tidy tibbles

# Load dataset
clients <- read_csv("building_complex_models.csv")

# Review dataset
head(clients)
str(clients)
summary(clients)

# ================================================
# Activity 1: Building a Model with Numeric Predictors
# ================================================

# Fit a logistic regression model using glm()
# Use summary() to review the model output
# Use tidy() from broom to present coefficients in a cleaner format

# Example:
# model1 <- glm(Defaulted ~ CreditUtilization, data = clients, family = "binomial")
# summary(model1)
# tidy(model1)

# Try it Out #1: Now test whether income level is a meaningful predictor of default.

# Steps:
# - Build a logistic regression model using Income as the predictor
# - Use summary() to evaluate significance
# - Use tidy() to extract model results

# <YOUR CODE HERE>

# ================================================
# Activity 2: Expanding with Behavioral Variables
# ================================================

# Fit a model using both CreditUtilization and PriorDefaults
# Summarize results using summary()
# Use tidy() to clearly present coefficient values

# Example:
# model2 <- glm(Defaulted ~ CreditUtilization + PriorDefaults, data = clients, family = "binomial")
# summary(model2)
# tidy(model2)

# Try it Out #1: Test a model with Income and PriorDefaults.

# Steps:
# - Fit a logistic regression using both variables
# - Compare coefficients and odds
# - Check the significance and interpret the findings

# <YOUR CODE HERE>

# ================================================
# Activity 3: Including Categorical Variables
# ================================================

# Convert MaritalStatus into a factor using as.factor()
# Build a model: Defaulted ~ CreditUtilization + PriorDefaults + MaritalStatus
# Interpret model output and factor levels

# Example:
# clients$MaritalStatus <- as.factor(clients$MaritalStatus)
# model3 <- glm(Defaulted ~ CreditUtilization + PriorDefaults + MaritalStatus, data = clients, family = "binomial")
# summary(model3)
# tidy(model3)

# Try it Out #1: Now test whether Education level influences default behavior.

# Steps:
# - Convert Education to a factor
# - Build a model: Defaulted ~ CreditUtilization + PriorDefaults + Education
# - Review model output and interpret coefficient direction

# <YOUR CODE HERE>

# ================================================
# Activity 4: Predicting Probabilities
# ================================================

# Create a new tibble with hypothetical inputs
# Use predict() with type = "response"
# Interpret output as probabilities

# Example:
# new_data <- tibble(Age = 30, PriorPurchases = 2, Gender = "Male")
# predict(model3, newdata = new_data, type = "response")

# Try it Out #1: Use your best model to predict default probability for this client:

# CreditUtilization = 0.85
# PriorDefaults = 2
# MaritalStatus = Married

# Steps:
# - Using the values above, create a tibble with those inputs
# - Use your final model to predict probability
# - Interpret the risk

# <YOUR CODE HERE>