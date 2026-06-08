# Ungraded Lab: Model Evaluation Practice

# Install required packages if not already installed
# install.packages("tidyverse")
# install.packages("fable")
# install.packages("tsibble")
# install.packages("feasts")
# install.packages("forecast")
# install.packages("lubridate")


# Load the required libraries
library(tidyverse)      # Data manipulation and plotting
library(forecast)       # Time series models and accuracy metrics
library(tsibble)        # Time-aware tibbles
library(fable)          # Forecasting models
library(feasts)         # Feature extraction and diagnostics
library(lubridate)      # Date parsing and manipulation

# Load the dataset
weekly_demand <- read_csv("model_evaluation_practice.csv")

# Convert to tsibble using Date as index
weekly_demand <- weekly_demand %>%
  mutate(Date = as.Date(Date)) %>%
  as_tsibble(index = Date)

# Inspect the dataset
head(weekly_demand)
str(weekly_demand)
summary(weekly_demand)

# ================================================
# Activity 1: Calculate Forecast Accuracy Metrics
# ================================================

# Fit three different models on the same training set
# Generate forecasts for the test set
# Compute MAE, RMSE, and MAPE for each model
# Create a table to compare the results

# Example:
# Split into training and test
# train_data <- time_series_data %>% filter(Time < as.Date("2023-01-01"))
# test_data <- time_series_data %>% filter(Time >= as.Date("2023-01-01"))

# Fit models
# arima_model <- train_data %>% model(ARIMA(TargetVariable))
# ets_model <- train_data %>% model(ETS(TargetVariable))
# naive_model <- train_data %>% model(NAIVE(TargetVariable))

# Generate forecasts
# arima_forecast <- forecast(arima_model, h = nrow(test_data))
# ets_forecast <- forecast(ets_model, h = nrow(test_data))
# naive_forecast <- forecast(naive_model, h = nrow(test_data))

# Evaluate accuracy
# acc_arima <- accuracy(arima_forecast, test_data)
# acc_ets <- accuracy(ets_forecast, test_data)
# acc_naive <- accuracy(naive_forecast, test_data)

# Combine results into a single table
# bind_rows(
#   acc_arima %>% mutate(model = "ARIMA"),
#   acc_ets %>% mutate(model = "ETS"),
#   acc_naive %>% mutate(model = "Naive")
# )

# Try It Out #1: You're evaluating three candidate models: ARIMA, ETS, and a naive baseline

# Steps:
# - Fit all three models to the training set
# - Forecast on the test set
# - Use accuracy() to compare MAE, RMSE, MAPE
# - Present the results in a table

# <YOUR CODE HERE>

# ================================================
# Activity 2: Apply Time Series Cross-Validation
# ================================================

# Define rolling origin cross-validation
# Train models across each fold
# Collect out-of-sample accuracy
# Compare average metrics across folds

# Example:
# Define training set and cross-validation folds
# train <- weekly_demand %>% filter(Date < as.Date("2023-01-01"))
# cv_folds <- train %>% stretch_tsibble(.init = 52, .step = 4)
# Apply model across folds
# res_cv <- cv_splits %>%
#   model(arima_model = ARIMA(TargetVariable)) %>%
#   forecast(h = 4) %>%
#   accuracy(cv_splits)

# Summarize average MAE and RMSE across folds
# res_cv %>%
#   group_by(.model) %>%
#   summarise(across(.cols = c(MAE, RMSE), mean))

# Try It Out #1: You need to validate model stability over time

# Steps:
# - Create rolling origin splits with stretch_tsibble()
# - Apply ARIMA and ETS models across folds
# - Forecast 4 weeks ahead
# - Compare averaged MAE and RMSE

# <YOUR CODE HERE>

# ================================================
# Activity 3: Evaluate Model Complexity and Information Criteria
# ================================================

# Fit competing models to the full dataset
# Use glance() to extract AIC, BIC
# Interpret values (lower = better)

# Example:
# model_comparison <- time_series_data %>% model(
#   arima_model = ARIMA(TargetVariable),
#   ets_model = ETS(TargetVariable)
# )

# glance(model_comparison)

# Try It Out #1: You want to balance accuracy with simplicity

# Steps:
# - Fit ARIMA and ETS models
# - Use glance() to compare AIC/BIC
# - Identify which model has the best trade-off

# <YOUR CODE HERE>

# Note: If you see a warning message about out-of-sample-data after running code
# in this activity, don’t worry, this is expected and won’t affect your results.
# The code still runs correctly and generates the output as intended.

# ================================================
# Activity 4: Bringing it All Together
# ================================================

# You’ve evaluated ARIMA, ETS, and naive forecasting models using accuracy metrics,
# cross-validation, and information criteria. Now it’s time to reflect.

# Scenario:
# Your manager has asked you to prepare a short internal summary ahead of a strategic planning meeting.
# Your team wants to know:
# Which model performed best overall?
# What should we recommend moving forward?

# You won’t be writing more code in this section.
# Instead, add your insights using # comments directly below.
# This mirrors how analysts document findings and prepare notes for decision-making.

# Task 1:

# Use # comments to summarize your analysis. You’re writing as if you're briefing your team lead.
# Consider:
# - Which model had the strongest accuracy (MAE, RMSE, MAPE)?
# - How stable were the results across folds in cross-validation?
# - What did AIC/BIC tell you about model complexity?
# - How would you explain your results to a non-technical teammate?

# Example:
# - Summary of Model Performance:
# - ARIMA had the lowest MAE and RMSE, and performed consistently across time.
# - ETS had slightly higher error but was easier to interpret.

# <YOUR REFLECTION COMMENTS HERE>

# Task 2: 
# Now shift into recommendation mode. Write 3–5 bullet-style next steps.
# Think about what actions the team should take and why your analysis supports them.

# Example:
# - Recommendations:
# - Adopt ARIMA for weekly demand forecasting in the next planning cycle.
# - Use cross-validation monthly to track performance changes.

# <YOUR RECOMMENDATION COMMENTS HERE>