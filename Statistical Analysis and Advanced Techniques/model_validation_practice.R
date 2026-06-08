# Ungraded Lab: Model Validation Practice

# Install required packages if not already installed

# Load the required libraries
library(tidyverse)     # Data wrangling and plotting
library(ggplot2)       # Data visualization
library(car)           # Diagnostic tools like VIF and outlierTest
library(broom)         # Tidy regression outputs
library(GGally)        # Matrix plots for model variables
library(lmtest)        # Heteroskedasticity and autocorrelation tests
library(ggfortify)     # Quick diagnostic plots

# Load the dataset
model_data <- read_csv("model_validation_practice.csv")

# Inspect the dataset
head(model_data)
str(model_data)
summary(model_data)

# ================================================
# Activity 1: Check Linearity and Residual Patterns
# ================================================

# Fit a linear model predicting CartValue with the following predictor (Age, Income, WebVisits)
# Plot residuals using autoplot() using which= c(1,3) 


# Example
# example_model <- lm(CartValue ~ Age + Income, data = model_data)
# autoplot(example_model, which = c(1,3))  # Plot residual vs fitted and scale-location

# Try It Out #1: You're validating if relationships between numeric predictors and CartValue are linear

# Steps:
# - Fit a model with all numeric predictors
# - Plot residuals using autoplot() using which= c(1,3) 
# - Look for curved or uneven patterns in the residuals

# <YOUR CODE HERE>

# ================================================
# Activity 2: Assess Normality of Residuals
# ================================================

# Use a QQ plot
# Conduct a Shapiro-Wilk test


# Example
# qqnorm(resid(example_model))
# qqline(resid(example_model))
# shapiro.test(resid(example_model))

# Try It Out #2: You're testing if residuals appear normally distributed for inference

# Steps:
# - Use qqnorm() and qqline() to visualize
# - Run shapiro.test() on the residuals
# - Evaluate distribution shape and p-value

# <YOUR CODE HERE>

# ================================================
# Activity 3: Identify Outliers and Influential Observations
# ================================================

# Plot Cook’s distance
# Identify any rows with unusually high influence

# Example
# example_cooksd <- cooks.distance(example_model)
# plot(example_cooksd, type = "h", main = "Cook's Distance")
# which(example_cooksd > 4/length(example_cooksd))

# Try It Out #3: You want to see if extreme values are skewing the model

# Steps:
# - Calculate Cook’s Distance for your model
# - Plot values to visualize high influence
# - Flag rows with Cook’s D > 4/n

# <YOUR CODE HERE>

# ================================================
# Activity 4: Test for Multicollinearity
# ================================================

# Use vif() from the car package
# Interpret values > 5 as potential concern

# Example:
# vif(example_model)

# Try It Out #4: You want to reduce predictor overlap to stabilize estimates

# Steps:
# - Use vif() on your full regression model
# - Identify variables with VIF > 5
# - Consider removing or combining predictors

# <YOUR CODE HERE>

# ================================================
# Activity 5: Bringing it All Together
# ================================================

# You’ve completed your regression diagnostics: checking linearity, residual behavior,
# outliers, and multicollinearity. Now it’s time to recommend next steps for your team.

# Scenario:
# Your manager is preparing to use the regression model in a stakeholder presentation and
# needs a brief summary of its validity. Before the model is used to support decisions,
# your manager wants your assessment on whether it’s reliable, and if anything still needs to be addressed.

# You won’t write new code. Instead, scroll to the end of your .R script and add your
# responses using # comments below.


# Task 1:
# Use a second comment block to explain your findings in plain language.

# Consider:
# What are the risks of using the model if assumptions aren’t met?
# Would you feel confident using this model for forecasting or strategy?

# <YOUR PLAIN LANGUAGE EXPLANATION HERE>

# Task 2:
# Use a final comment block to list 3–5 action steps the team should take next.

# Example ideas:
# Remove outliers and refit the model