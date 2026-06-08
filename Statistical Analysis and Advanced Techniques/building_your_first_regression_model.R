# Ungraded Lab: Building Your First Regression Model

# Install necessary packages (if not already installed)
# install.packages("tidyverse")
# install.packages("ggplot2")

# Load required libraries
library(tidyverse)  # Data wrangling and visualization
library(ggplot2)    # Plotting functions

# Load dataset
students <- read_csv("building_your_first_regression_model.csv")

# Review structure
head(students)
str(students)
summary(students)

# ================================================
# Activity 1: Exploring Variable Relationships
# ================================================

# Example: Scatterplot and correlation
# plot_a <- ggplot(students, aes(x = NumberofSubjectsTaken, y = FinalExamScore)) +
#  geom_point() +
#  geom_smooth(method = "lm", se = FALSE)
# print(plot_a)

# cor(students$NumberofSubjectsTaken, students$FinalExamScore)

# Try it Out #1: Explore the relationship of StudyHoursPerWeek and FinalExamScore
# You're asked to explore whether students who study more tend to score higher.

# Steps:
# - Use ggplot() to create a scatter plot
# - Add a linear smooth line
# - Calculate correlation using cor()

plot_1 <- # <YOUR CODE HERE>
print(plot_1)

# ================================================
# Activity 2: Fitting a Simple Regression Model
# ================================================

# Example: Fit linear model
# model <- lm(FinalExamScore ~ NumberofSubjectsTaken, data = students)
# summary(model)

# Try it Out #1: Interpret your model
# You're now asked to run your own model and interpret its output.

# Steps:
# - Fit model using lm(): FinalExamScore ~ StudyHoursPerWeek
# - Use summary() to extract R-squared and coefficients

# <YOUR CODE HERE>

# ================================================
# Activity 3: Checking Assumptions
# ================================================

# Example: Diagnostic plots
# par(mfrow = c(2,2))
# plot(model)

# Try it Out #1: Validate your model
# You're asked to identify any violations of regression assumptions.

# Steps:
# - Plot diagnostic charts with plot(model)
# - Note patterns in residuals or outliers
# - Document any violations

# <YOUR CODE HERE>

# ================================================
# Activity 4: Making Predictions
# ================================================

# Example: Predict for new values
# new_data <- tibble(StudyHoursPerWeek = c(5, 10, 15))
# predict(model, newdata = new_data, interval = "prediction")

# Try it Out #1: Predict outcomes
# You're asked to estimate scores for students studying 6, 9, and 12 hours.

# Steps:
# - Create a tibble with new StudyHoursPerWeek values
# - Use predict() with interval="prediction"
# - Interpret predicted scores and intervals

# <YOUR CODE HERE>

# ================================================
# Activity 5: Bringing It All Together
# ================================================

# You’ve explored the data, built your first regression model, and made predictions.
# Now it’s time to bring everything together and share your insights.

# Scenario:
# The lead researcher is preparing a one-page summary to present to academic advisors.
# They need a simple, clear overview of what your analysis found and what recommendations might follow.
# Your job is to explain the relationship between study time and exam performance—and whether this model can help support future academic planning.

# You won’t write new code in this section.
# Instead, scroll to the bottom of your R script and add your answers as # comments.

# Task 1:
# In a comment block, briefly describe your key findings in plain language.
# Imagine a teammate who hasn’t seen the code.

# Consider:
# - Did more study hours lead to higher exam scores?
# - Was the relationship strong or weak (e.g., high or low R-squared)?
# - Did the model assumptions mostly hold?

# Keep it simple — 3 to 4 sentences is plenty.

# <YOUR SUMMARY HERE>

# Task 2:
# Now shift into recommendation mode.
# In a second comment block, write 2–3 bullet-style suggestions based on your analysis.

# Consider:
# - Should advisors encourage more study hours?
# - Would it help to gather more data (e.g., attendance, GPA)?
# - Is the model good enough for prediction, or just exploration?

# This section should help the research team decide how to apply your insights.

# <YOUR RECOMMENDATIONS HERE>