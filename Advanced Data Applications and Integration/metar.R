# Ungraded Lab: First Steps with APIs

# Install necessary packages (if not already installed)
# install.packages("httr")
# install.packages("jsonlite")
# install.packages("dplyr")
# install.packages("tibble")

# Load the required libraries
library(httr)        # For making API requests
library(jsonlite)    # For parsing JSON
library(dplyr)       # For data wrangling
library(tibble)      # For tidy data frames

# ================================================
# Activity 1: Make Your First API Call
# ================================================

# Steps:
# Build the URL using the station ID and format=json
# Use GET() and content() to fetch and parse the response
# Inspect the top-level structure and number of results

# Example:
# url <- "https://aviationweather.gov/api/data/metar?ids=KSFO&format=json"
# response <- GET(url)
# data <- content(response, as = "parsed")
# str(data)

# Try it Out #1: Request weather data for Atlanta (KATL)
# Steps:
# Change ids= to "KATL"
# Use GET() and content()
# Inspect the structure of the response
# Hint: Expect a list of records. Use data[[1]] to access the first METAR.
# Complete the code 

________ <- "____________________________________________________________"  # Build the correct API URL with station ID and JSON format
response <- ______(url)  # Makes a GET request to the API
_________________(response, as = "parsed")  # Parses the JSON response into a usable R list
str(data)  # Displays the structure of the response; should be a list of observations

# ================================================
# Activity 2: Request and View Full Weather Report
# ================================================


# Steps
# Pull out the first result from the list
# Use $ or [["key"]] notation to access metar_id, times, temp
# Example
# example_record <- data[[1]]  # Retrieves the first item in the METAR list
# example_record$metar_id # Displays the complete raw METAR ID
# example_record$receiptTime  # Shows the observation date/time, useful for data freshness
# example_record$temp  # Pulls the reported temperature in Celsius

# Try it Out #1: Extract full METAR details from the first result
# Steps:
# Extract data[[1]]
# Print out raw_text, observation_time, and temp_c
# Hint: Use str() on the record to see what’s available.
# Complete the code 

record <- _____________  # Retrieves the first item in the METAR list
record$________ # Displays the complete raw METAR ID
record$________  # Shows the observation date/time, useful for data freshness
record$_______  # Pulls the reported temperature in Celsius

# ================================================
# Activity 3: Extract and Format Weather Data
# ================================================

# Steps:
# Extract key fields into a vector
# Use tibble() to structure it with column names

# Example:
# tibble(
#   station = example_record$icaoId,  # Extract station ID to identify source of data
#   timestamp = example_record$receiptTime,  # Timestamp helps track when data was recorded
#   temperature_c = example_record$temp,  # Pull temperature in Celsius for analysis
#   wind_speed_kt = example_record$wspd,  # Wind speed in knots, if available
#   raw_text = example_record$rawOb  # Retains full raw METAR for reference or debug
# )

# Try it Out #1: Create a tibble with selected fields
# station, timestamp, temperature_c, wind_speed_kt, raw_text
# Hint: Use tibble() and extract each field from record.
# Complete the code

weather_summary <- ________(
 ___________ = record$icaoId,  # Extract station ID to identify source of data
  __________ = record$receiptTime,  # Timestamp helps track when data was recorded
  __________ = record$temp,  # Pull temperature in Celsius for analysis
  ____________ = record$wspd,  # Wind speed in knots, if available
  __________ = record$rawOb  # Retains full raw METAR for reference or debug
)

# ================================================
# Activity 4: Handle API Errors
# ================================================

# Example
# Write a function that calls the API and catches errors
# If the call fails, use fromJSON("metar_sample.json")

# Example:
# safe_metar_request <- function(station, backup_file) {
#   tryCatch({
#     url <- paste0("https://aviationweather.gov/api/data/metar?ids=", station, 
# 		"&format=json")
#     data <- content(GET(url), as = "parsed")
#     data[[1]]
#   }, error = function(e) {
#     message("API failed, using backup")
#     fromJSON(backup_file)[[1]]
#   })
# }


# Try it Out #1: Create a fallback-aware request function
# Steps:
# Use tryCatch() to call the API
# Return the first record or the backup version
# Hint: Use paste0() to build the URL.
# Complete the code 

safe_metar_request <- function(station, backup_file) {
  _________({
    url <- _________("https://aviationweather.gov/api/data/metar?ids=", station, "&format=json")  # Dynamically build the request URL
    data <- content(GET(url), as = "parsed")  # Attempt to get and parse data
  _____________  # Return the first record
  }, error = function(e) {
    message("API failed, using backup")  # Fallback in case of error
    fromJSON(backup_file)[[1]]  # Return data from local JSON backup file
  })
}


