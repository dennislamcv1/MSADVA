# Ungraded Lab: Exploring Statistical Functions

# Install necessary packages (if not already installed)
# install.packages("tidyverse")
# install.packages("ggplot2")

# Load the required libraries
library(tidyverse)
library(ggplot2)

# Load your data into R
clinical <- read_csv("exploring_statistical_functions.csv")

# Review the dataset
head(clinical)

# ================================================
# Activity 1: Identifying Variable Types
# ================================================

# Use str() and summary() to inspect your variables
# Identify whether each variable is categorical or numerical
# Create a named list categorizing each variable

# Example:
# str(data)
# summary(data)

# numerical_vars <- names(data)[sapply(data, is.numeric)]  # Identify numeric variables
# categorical_vars <- names(data)[sapply(data, is.character)]  # Identify character variables

# Try it Out #1: Classify variables into numerical and categorical types
# Steps:
# Use str() and summary() to inspect your variables
# Use sapply() to identify numeric columns
# Use sapply() to identify character-based columns
# Create a list with two vectors: `numerical_vars` and `categorical_vars`
# <YOUR CODE HERE>

# ================================================
# Activity 2: Measures of Central Tendency
# ================================================

# Calculate mean and median of RecoveryTime
# Group by TreatmentGroup and summarize
# Use na.rm = TRUE for robustness

# Example:
# mean(data$Time, na.rm = TRUE)
# median(data$Time, na.rm = TRUE)

# data %>%
    # group_by(TreatmentGroup) %>%
    # summarise(
        # mean_recovery = mean(Time, na.rm = TRUE),  # Calculate mean per group
        # median_recovery = median(Time, na.rm = TRUE)  # Calculate median per group
    # )

# Try it Out #1: Compare recovery times by TreatmentGroup
# Steps:
# Use group_by() + summarize() to compute mean and median per group
# <YOUR CODE HERE>

# ================================================
# Activity 3: Measures of Spread
# ================================================

# Compute standard deviation and variance of RecoveryTime
# Compare spread across TreatmentGroup using group_by() + summarize()

# Example:
# sd(clinical$RecoveryTime, na.rm = TRUE)
# var(clinical$RecoveryTime, na.rm = TRUE)

# clinical %>%
    # group_by(SideEffects) %>%
    # summarise(
        # sd_recovery = sd(Time, na.rm = TRUE),  # Standard deviation by group
        # var_recovery = var(Time, na.rm = TRUE)  # Variance by group
    # )

# Try it Out #1: Compare variability by SideEffects
# Steps:
# Group by SideEffects and calculate sd() and var()
# <YOUR CODE HERE>

# ================================================
# Activity 4: Visualizing Distributions
# ================================================

# Use ggplot() to create histograms and boxplots
# Customize with labs() and theme() for readability
# Create bar charts for categorical frequencies

# Example:
# plot_a <- ggplot(clinical, aes(x = RecoveryTime)) +
#   geom_histogram(binwidth = 2, fill = "skyblue") +
#   labs(title = "Recovery Time Distribution", x = "Days", y = "Count")
# print(plot_a)

# Try it Out #1: Boxplot of RecoveryTime by TreatmentGroup
# Steps:
# Use ggplot() + geom_boxplot()

plot_4.1 <-# <YOUR CODE HERE>
print(plot_4.1)

# Try it Out #2: Bar chart for SideEffects
# Steps:
# Use ggplot() + geom_bar()
plot_4.2 <-# <YOUR CODE HERE>
print(plot_4.2)

# ================================================
# Activity 5: Bringing It All Together
# ================================================

# You’ve calculated recovery statistics, compared treatment effects, and visualized key variables.
# Now it’s time to summarize your findings and share insights with your research team.

# Scenario:
# The team is preparing a final report and has asked for your interpretation of the data —
# and any suggestions you’d make based on your analysis.

# You won’t write new code in this section.
# Instead, scroll to the bottom of your R file and add your responses using # comments below.

# Task 1:

# In a comment block, briefly describe what you learned from the analysis.
# Consider:
# - Which treatment group had the shortest average recovery time?
# - Did recovery time vary much by treatment or side effects?
# - What did the visualizations show (e.g., differences, patterns, or outliers)?

# <YOUR FINDINGS HERE>


# Task 2:
# Use a second comment block to explain your results in plain language.
# Imagine you're writing for someone who hasn’t seen the code.
# Consider:
# - Do results suggest Drug A or B works better than the placebo?
# - Were the differences large or small?
# - What’s one key takeaway you’d include in a summary report?

# <YOUR INTERPRETATION HERE>


# Task 3: 
# Now shift into recommendation mode.
# Write 2–4 action steps or suggestions based on your analysis.

# Consider:
# - Any concerns about variability, sample size, or side effects?
# - Follow-up questions or charts you’d suggest
# - Notes about what’s safe to say in the final report
# <YOUR RECOMMENDATIONS HERE>