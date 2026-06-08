# ================================================
# final_results.R
# Documentation and Results
# ================================================

# ================================================
# Load Packages and Dataset
# ================================================
library(tidyverse)    # For data wrangling and visualizations
library(knitr)        # For knitting R Markdown documents
library(rmarkdown)    # To render reports
library(plotly)       # For interactive plots
library(DT)           # For interactive tables
library(broom)        # To tidy model outputs
library(lubridate)    # For working with dates
library(tidyverse)    # For data wrangling and visualization
library(stats)        # For modeling and statistical tests

# Load dataset
house_data <- read_csv("housing_data.csv")

# Correlation coefficient
cor_result <- tibble(
    correlation = cor(house_data$sqft_living, house_data$price, 
    use = "complete.obs"))

# ================================================
# Practice Challenge 1: Exporting Results 
# ================================================

# Step 1: Save a cleaned version using drop_na() of your dataset
# as cleaned_house_data.csv
cleaned_house_data <- # <YOUR CODE HERE>

# Step 2: Save correlation result to CSV and call it 
# correlation_output.csv
# <YOUR CODE HERE>

# ================================================
# Practice Challenge 2: Reproducible Reports with R Markdown
# ================================================
# Please open the new final_report.Rmd file included in your lab 
# to complete the rest of this activity