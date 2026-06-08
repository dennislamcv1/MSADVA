# Ungraded Lab: Hypothesis Testing Practice

# Install necessary packages (if not already installed)
# install.packages("tidyverse")
# install.packages("ggplot2")

# Load the required libraries
library(tidyverse)  # Data manipulation and visualization
library(ggplot2)    # Plotting functions

# Load the dataset
customers <- read_csv("hypothesis_testing_practice.csv")

# Review the dataset
head(customers)
str(customers)
summary(customers)

# ================================================
# Activity 1: Test Selection and Setup
# ================================================

# Inspect InvestmentReturn and AccountType variables using hist() and boxplot()
# Check assumptions (normality, sample sizes)
# Formulate null and alternative hypotheses
# Choose the appropriate test (ANOVA, t-test, etc.)

# Example
# Visualize MonthlyIncome distribution
# hist(transactions$InvestmentReturn)  # See overall income distribution

# Visualize income spread across AccountType groups
# boxplot(InvestmentReturn ~ AccountType, data = transactions)

# Compare average InvestmentReturn across AccountTypes
# transactions %>%
#   group_by(AccountType) %>%
#   summarize(avg_income = mean(InvestmentReturn, na.rm = TRUE))

# Test normality within each group
# shapiro.test(transactions$InvestmentReturn[transactions$AccountType == "Basic"])
# shapiro.test(transactions$InvestmentReturn[transactions$AccountType == "Premium"])
# shapiro.test(transactions$InvestmentReturn[transactions$AccountType == "Gold"])

# Run a one-way ANOVA (if normality holds)
# anova_result <- aov(InvestmentReturn ~ AccountType, data = transactions)
# summary(anova_result)

# OR, use Kruskal-Wallis test if data is not normally distributed
# kruskal.test(InvestmentReturn ~ AccountType, data = transactions)

# Try it Out #1: Is there a difference in income across account types?
# You're checking if income varies significantly by account type.

# Steps:
# Inspect MonthlyIncome and AccountType variables using hist() and boxplot()
# Use group_by() and summarize() to compare means
# Check normality with shapiro.test() on subgroups
# Choose a one-way ANOVA or Kruskal-Wallis depending on assumptions

# <YOUR CODE HERE>

# ================================================
# Activity 2: Conducting T-Tests
# ================================================

# Create two groups based on Defaulted
# Compare CreditScore distributions
# Run a two-sample t-test
# Example
# t.test(Score ~ GroupStatus, data = sample_data, var.equal = FALSE)

# Try it Out #1: Do defaulted customers have different credit scores?
# You're testing for a significant difference in credit score means.

# Steps:
# - Use t.test() with grouping by Defaulted
# - Interpret p-value and confidence interval

# <YOUR CODE HERE>

# ================================================
# Activity 3: Chi-Square Tests
# ================================================

# Build a contingency table for Region and Defaulted
# Run a chi-square test using chisq.test()
# Examine expected vs. observed counts

# Example
# category_status_table <- table(data$CategoryGroup, data$OutcomeStatus)
# chisq.test(category_status_table)

# Try it Out #1: Is default status dependent on Region?
# You're looking for a relationship between geographic location and likelihood of default.

# Steps:
# - Create a 2-way table using table()
# - Run chisq.test() on the table
# - Interpret the p-value in plain language

# Note: If you see a chisq.test warning message when running the code
# in this activity, don’t worry, this is expected and won’t affect your results.
# The code still runs correctly and generates the output as intended.


# <YOUR CODE HERE>

# ================================================
# Activity 4: Confidence Intervals
# ================================================

# Run a one-sample t-test
# Use t.test() with conf.level = 0.95

# Example
# t.test(data$PerformanceMetric, conf.level = 0.95)

# Try it Out #1: Estimate average investment return with 99% confidence.

# Steps:
# - Run a one-sample t-test on InvestmentReturn
# - Set conf.level = 0.99
# - Interpret the lower and upper bounds of the interval

# <YOUR CODE HERE>