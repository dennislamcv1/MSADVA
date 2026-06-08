# Ungraded Lab: Employee Performance Testing Scenario

# Install necessary packages (if not already installed)
# install.packages("tidyverse")
# install.packages("ggplot2")
# install.packages("janitor")

# Load the required libraries
library(tidyverse)     # Data wrangling and plotting
library(ggplot2)       # Data visualization
library(janitor)       # Cleaning column names and summary tables
library(stats)         # Core statistical testing

# Load the dataset
employees <- read_csv("employee_data.csv")

# Review the dataset
head(employees)
str(employees)
summary(employees)

# ================================================
# Activity 1: Comparing Salary by Education Level
# ================================================

# Inspect the distribution of MonthlySalary across EducationLevel
# Check for normality and variance assumptions
# Conduct a one-way ANOVA test

# Example
# boxplot(MonthlySalary ~ EducationLevel, data = employees)
# aov_result <- aov(MonthlySalary ~ EducationLevel, data = employees)
# summary(aov_result)

# Try it Out #1: Is salary affected by department?
# You're testing whether average salary significantly differs between departments.

# Steps:
# - Group data by Department, visualize salary
# - Use aov() for ANOVA
# - Check assumptions and interpret output

# <YOUR CODE HERE>

# ================================================
# Activity 2: Remote Work and Performance Ratings
# ================================================

# Create boxplots of PerformanceRating by Remote Work
# Use t.test() to compare means
# Interpret p-value and confidence interval

# Example
# Visualize distributions
# boxplot(PerformanceRating ~ TestGroup, data = employees)

# Run two-sample t-test
# t.test(PerformanceRating ~ TestGroup, data = employees)

# Try it Out #1: You're checking if remote and onsite employees have different average years of experience.

# Steps:
# - Visualize experience distributions
# - Use t.test()
# - Confirm variance equality using var.test()

# <YOUR CODE HERE>

# ================================================
# Activity 3: Remote Work and Promotions
# ================================================

# Create a contingency table between RemoteWork and PromotedLast2Years
# Run chisq.test() on the table
# Interpret expected vs observed counts

# Example
# table(data$CategoryA, data$CategoryB)
# chisq.test(table(data$CategoryA, data$CategoryB))

# Try it Out #1: Test if promotions differ between RemoteWork and PromotedLast2Years
# You're checking for a relationship between RemoteWork and PromotedLast2Years.

# Steps:
# - Build a 2-way table
# - Run chisq.test()
# - Review p-value and check for significance

# <YOUR CODE HERE>

# ================================================
# Activity 4: Estimating Confidence Intervals
# ================================================

# Use t.test() with confidence interval output
# Adjust confidence level if needed

# Example
# t.test(employees$MonthlySalary, conf.level = 0.95)

# Try it Out #1: You're estimating how much experience employees typically have.
# Steps:
# - Run a one-sample t-test on YearsExperience
# - Set conf.level = 0.99
# - Interpret the interval

# <YOUR CODE HERE>

# ================================================
# Activity 5: Bringing It All Together
# ================================================

# You're wrapping up your analysis and preparing to communicate your findings.
# Instead of writing new code, you'll reflect on what you learned using comments.

# Task 1: Reflect on Your Findings
# Say you're explaining your results to a manager who doesn't know statistics.

# Steps:
# - Which groups had statistically significant differences? (e.g., by department, gender, remote work)
# - What patterns stood out across salary, performance, or promotions?
# - Were any results surprising or not what you expected?
# - Summarize your key findings in 4–6 sentences using comments below.

# Example:
# Summary of Findings:
# Salaries varied significantly across education levels.
# No clear performance rating difference between remote and onsite workers.

# <YOUR REFLECTION COMMENTS HERE>


# Task 2: Recommend Next Steps
# Now think like a consultant advising HR based on your findings.

# Steps:
# - What actions should the company take (if any)?
# - What limitations or missing context should HR be aware of?
# - What would you want to investigate further?

# Add 3–5 bullet-style recommendations in the comments below.

# Example:
# - Recommendation Memo:
# - Investigate salary structures to ensure fair compensation across education levels.
# - Consider gathering more detailed promotion data by role and tenure.

# <YOUR RECOMMENDATION COMMENTS HERE>