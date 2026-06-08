# ================================================
# Final Project: Regression Model Development and Validation
# Module 5 - Final Project
# ================================================

# ================================================
# Graded Challenge 1: Data Preparation & Exploration (25 points)
# ================================================

# Step 1: Load dependencies and dataset
library(tidyverse)     # For data wrangling and visualization
library(broom)         # For tidying model outputs
library(car)           # For checking multicollinearity
library(ggplot2)       # For plotting


# Load dataset
analysis_df <- read_csv("regression_model_final.csv")

# Step 2: Examine structure and summary statistics
# Check the structure of the dataset
str(analysis_df)

# Alternatively, use glimpse() from dplyr for a cleaner look
# glimpse(analysis_df)

# View the first few rows
head(analysis_df)

# Summary statistics for numeric variables
summary(analysis_df)

colnames(analysis_df)

# Step 3: Identify and remove missing values
colSums(is.na(analysis_df))

# Step 4: Calculate mean and standard deviation for:
# Income, Age, TotalSpend



mean_income = mean(analysis_df$Income, na.rm = TRUE)

mean_age    = mean(analysis_df$Age, na.rm = TRUE)

mean_totalspend  = mean(analysis_df$TotalSpend, na.rm = TRUE)

sd_income <- sd(analysis_df$Income, na.rm = TRUE)
sd_age <- sd(analysis_df$Age, na.rm = TRUE)
sd_totalspend <- sd(analysis_df$TotalSpend, na.rm = TRUE)

# Print results
mean_income; mean_age; mean_totalspend
sd_income; sd_age; sd_totalspend


# ================================================
# Graded Challenge 2: Data Visualization with ggplot2 (25 points)
# ================================================

# Step 1: Histogram of TotalSpend
# - Fill color: skyblue
# - Border color: black
# - Bins: 30
# - Title: "Distribution of Total Spend"
# - X-axis: "Total Spend"
# - Y-axis: "Number of Customers"
# Step 1: Histogram of TotalSpend

plot_1 <- ggplot(analysis_df, aes(x = TotalSpend)) +
  geom_histogram(
    bins = 30,
    fill = "skyblue",
    color = "black"
  ) +
  labs(
    title = "Distribution of Total Spend",
    x = "Total Spend",
    y = "Number of Customers"
  ) +
  theme_minimal()

# Display the plot
print(plot_1)


# Step 2: Scatter plot of Income vs TotalSpend
# - Color points by DeviceUsed
# - Add a linear trend line
# - Title: "Income vs Total Spend by Device Used"
# Step 2: Scatter plot of Income vs TotalSpend

plot_2 <- ggplot(analysis_df, aes(x = Income, y = TotalSpend, color = DeviceUsed)) +
  geom_point(alpha = 0.7) +  # semi-transparent points
  geom_smooth(method = "lm", se = FALSE, color = "black") +  # linear trend line
  labs(
    title = "Income vs Total Spend by Device Used",
    x = "Income",
    y = "Total Spend",
    color = "Device Used"
  ) +
  theme_minimal()

# Display the plot
print(plot_2)


# Step 3: Insights and Recommendations
# Describe 3–4 sentences about key findings
# Provide 2 bullet-style recommendations

# KEY FINDINGS:
# Add your sentences here.

# - Recommendation 1: YOUR COMMENT HERE
# - Recommendation 2: YOUR COMMENT HERE

# The Distribution almost Normal with 15 customers at 1200 Total Spend
# All devices are equally distributed and no linearity detected

# ================================================
# Graded Challenge 3: Model Development
# ================================================

# Step 1: Build a simple regression model: TotalSpend ~ Income
model_simple <- lm(TotalSpend ~ Income, data = analysis_df)
print(summary(model_simple))

# Step 2: Report R-squared and interpret slope
r_squared_simple <- summary(model_simple)$r.squared
cat("R-squared for the simple model:", r_squared_simple, "\n")

slope_simple <- coef(model_simple)["Income"]
cat("Slope for the simple model:", slope_simple, "\n")

# Step 3: Build a multiple regression model with:
# Income, Age, PurchaseHistoryScore
model_multi <- lm(TotalSpend ~ Income + Age + PurchaseHistoryScore, data = analysis_df)
  
# Step 4: Use summary() and broom::glance() to evaluate
summary <- summary(model_multi)
print(summary)

# Add broom::glance() here
broom_evaluation <- broom::glance(model_multi)
print(broom_evaluation)

# ================================================
# Graded Challenge 4: Model Validation & Prediction
# ================================================

# Pre Reqs: Use the model created in Activity 3.
# Step 1: Use diagnostic plots and vif() to evaluate assumptions using par() with c(2,2)

# YOUR CODE HERE for par()

par(mfrow = c(2, 2))  # set plotting layout
plot_4 <- plot(model_multi)  # this will plot directly
car::vif(model_multi) # check multicollinearity

# Step 2: Check for normality using qqnorm(), qqline(), and shapiro.test()
qqnorm(residuals(model_multi))
qqline(residuals(model_multi), col = "red")

shapiro_result <- shapiro.test(residuals(model_multi))
print(shapiro_result)

# Step 3: Predict TotalSpend for 3 new customer profiles
# - Customer 1: (Income = 55000, Age: 30, PurchaseHistoryScore: 60)
# - Customer 2: (Income = 75000, Age: 45, PurchaseHistoryScore: 80)
# - Customer 3: (Income = 95000, Age: 60, PurchaseHistoryScore: 90)

new_profiles <- tibble(
  Income = c(55000, 75000, 95000),
  Age = c(30, 45, 60),
  PurchaseHistoryScore = c(60, 80, 90)
)


# Step 4: Add prediction intervals and interpret results
prediction_intervals <- predict(
  model_multi,
  newdata = new_profiles,
  interval = "prediction"
)
print(prediction_intervals)

# Step 5: Estimate likelihood of high spending behavior
# Fill in the blanks with your code below

# Part A: Create a binary variable 'HighSpender' where TotalSpend > 500
analysis_df_final <- analysis_df %>%
  mutate(HighSpender = ifelse(TotalSpend > 500, 1, 0))
  
  # Part B: Fit a logistic regression model predicting HighSpender from Age, Income, and PurchaseHistoryScore
  logistic_model <- glm(
    HighSpender ~ Age + Income + PurchaseHistoryScore,
    data = analysis_df_final,
    family = binomial
  )

# Part C: Create a new tibble with a hypothetical customer profile
# - Customer: (Income = 50000, Age: 40, PurchaseHistoryScore: 70)

test_customer <- tibble(
    Income = 50000,
    Age = 40,
    PurchaseHistoryScore = 70
)

# Part D: Use predict(..., type = "response") to estimate probability
# Predict probability of high spending
predicted_probability <- predict(
  logistic_model,
  newdata = test_customer,
  type = "response"
)
print(predicted_probability)

