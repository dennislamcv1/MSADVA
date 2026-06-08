# Ungraded lab: Model Validation Techniques

# Load required libraries
library(tidyverse)       # Data manipulation and visualization
library(caret)           # Classification and regression training
library(pROC)            # ROC curve analysis
library(ROCR)            # ROC curve plotting
library(boot)            # Bootstrap resampling

# Load the dataset
data <- read_csv("model_validation_techniques.csv")

# Review dataset structure
head(data)
str(data)
summary(data)

# ================================================
# Activity 1: Preparing the Target Variable
# ================================================

# Calculate the median of Y
# Create binary variable Y_binary
# Use table() to check the distribution

# Example:
# median_value <- median(example_data$Y)
# example_data <- example_data %>% mutate(Y_binary = ifelse(Y > median_value, 1, 0))
# table(data$Y_binary)

# Try It Out: Prepare the target variable for classification
# Steps:
# - Calculate the median of Y
# - Create Y_binary using ifelse()
# - Check the distribution with table()
# <YOUR CODE HERE>

# ================================================
# Activity 2: Building and Evaluating a Basic Logistic Model
# ================================================

# Partition the data using caret
# Fit a logistic regression model using glm()
# Predict and evaluate using confusionMatrix()

# Example:
# set.seed(123)
# split_index <- createDataPartition(data$Y_binary, p = 0.8, list = FALSE)
# train <- data[split_index, ]
# test <- data[-split_index, ]

# model <- glm(Y_binary ~ X1 + X2 + X3 + X4, data = train, family = "binomial")
# probs <- predict(model, newdata = test, type = "response")
# preds <- ifelse(probs > 0.5, 1, 0)
# confusionMatrix(factor(preds), factor(test$Y_binary))

# Try It Out: Build and assess a basic logistic model

# Steps:
# - Use set.seed(42)
# - Split data with createDataPartition()
# - Train glm() on training set
# - Predict on test set
# - Evaluate with confusionMatrix()
# <YOUR CODE HERE>

# ================================================
# Activity 3: ROC and AUC Analysis
# ================================================

# Use roc() to generate ROC curve
# Calculate AUC
# Plot precision-recall using ROCR

# Example:
# roc_obj <- roc(test$Y_binary, probs)
# plot(roc_obj)
# auc(roc_obj)

# pred_obj <- prediction(probs, test$Y_binary)
# perf <- performance(pred_obj, "prec", "rec")
# plot(perf)

# Try It Out: Visualize model performance
# Steps:
# - Plot ROC curve
# - Calculate AUC
# - Create precision-recall plot
# <YOUR CODE HERE>

# ================================================
# Activity 4: Bringing it all Together 
# ================================================

# You've completed your logistic regression analysis using multiple validation techniques.
# Now it's time to step back and reflect.

# Scenario:
# Your business analytics team has asked you to prepare a short internal summary before your next project review meeting.
# Specifically, they want you to answer:
# - What did we learn about model performance?
# - What should we do next?

# Instead of writing more code, you'll document your thinking using comments.
# Use '#' to add your insights in the sections below.

# Task 1:
# Add a short summary of your model's performance.
# Consider the following:
# - What were your key metrics (accuracy, AUC, precision/recall)?
# - What did the ROC or PR curves tell you?
# - Was anything unexpected or unclear?
# - How would you explain the model's performance to someone non-technical?

# Example:
# Summary of Model Evaluation:
# Accuracy was ~80%, and AUC was around 0.85, showing strong model separation.
# Precision was slightly lower than recall, suggesting it’s better at catching positives.

# <YOUR REFLECTION COMMENTS HERE>

# Task 2:
# Now think like a consultant: Based on your analysis, what would you recommend the team do next? Write 3–5 bullet points in the comment block below.

# <YOUR RECOMMENDATION COMMENTS HERE>