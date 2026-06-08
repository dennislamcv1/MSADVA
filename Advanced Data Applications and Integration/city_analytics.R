# Ungraded Lab: Advanced Interactive Mapping

# Load necessary packages
library(leaflet)          # Create interactive maps
library(leaflet.extras)   # Advanced features for leaflet
library(dplyr)            # Data wrangling
library(readr)            # Read CSV files
library(sf)               # Spatial data support

# Load dataset
city_data <- read_csv("city_analytics.csv")

# ================================================
# Activity 1: Create Marker Clusters
# ================================================

# Steps:
# Use leaflet() with your dataset
# AddTiles() for a base map
# Use addMarkers() with clusterOptions = markerClusterOptions()

# Example:
# sample_data <- data.frame(
#   lat = c(37.77, 37.76, 37.78),
#   lng = c(-122.42, -122.43, -122.41),
#   label = c("Park", "Library", "Hospital")
# )

# map_a <- leaflet(sample_data) %>%
#   addTiles() %>%
#   addMarkers(~lng, ~lat, label = ~label, clusterOptions = markerClusterOptions())
# print(map_a)

# Try it Out #1: You're mapping POIs in your city dataset.
# Steps:
# Use leaflet(data = city_data)
# Add a base tile layer
# Add clustered markers using addMarkers(..., clusterOptions = ...)
# Hint: Use ~Longitude and ~Latitude to reference columns

map_1 <- # <YOUR CODE HERE>
print(map_1)

# ================================================
# Activity 2: Add Custom Legends and Layer Groups
# ================================================

# Steps:
# Use group argument inside addMarkers()
# Use addLayersControl() to switch layers
# Create a custom legend using addLegend() or custom HTML

# Example:
# map_b <- leaflet(sample_data) %>%
#   addTiles() %>%
#   addLegend("bottomright",
#             colors = c("green", "blue", "red"),
#             labels = c("Park", "Library", "Hospital"),
#             title = "POI Type")
# print(map_b)

# Try it Out #1: Add a custom legend to your POI map.
# Steps:
# Add markers using group = ~Neighborhood
# Add addLayersControl() for Neighborhood
# Add addLegend() showing different category values

map_2 <- # <YOUR CODE HERE>
print(map_2)

# ================================================
# Activity 3: Create Dynamic Filtering with Custom Controls
# ================================================

# Steps:
# Create a filtered data object with filter()
# Redraw the map with only those rows
# Use leafletProxy() if done in a reactive UI (not needed here)

# Example:
# sample_data <- data.frame(
#   lat = c(37.77, 37.76)
#   lng = c(-122.42, -122.43)
#   population = c(10000, 5000)
# )

# map_c <- leaflet(sample_data) %>%
#   addTiles() %>%
#   addCircleMarkers(~lng, ~lat, radius = ~population / 1000,
#                   color = "darkblue", fillOpacity = 0.7)
# print(map_c)

# Try it Out #1: Highlight high-pop neighborhoods
# Steps:
# Filter the dataset using filter(Population > 10000)
# Replot with leaflet() using the filtered data
# Use addMarkers() as usual

map_3 <- # <YOUR CODE HERE>
print(map_3)

# ================================================
# Activity 4: Implement Search and Sync Views
# ================================================

# Steps:
# Use addSearchFeatures() from leaflet.extras
# To sync views (optional), use leafsync with sync()

# Example:
# map_d <- leaflet() %>%
#   addTiles() %>%
#   addMarkers(data = sample_data[sample_data$label == "Park", ], ~lng, ~lat, group = "Park") %>%
#   addMarkers(data = sample_data[sample_data$label == "Hospital", ], ~lng, ~lat, group = "Hospital") %>%
#   addLayersControl(overlayGroups = c("Park", "Hospital"))
# print(map_d)

# Try it Out #1: Add layers for Library and Hospital
# Steps:
# Use addSearchFeatures()
# Set targetGroups = unique(city_data$Neighborhood)
# Customize the zoom option for detail

map_4 <- # <YOUR CODE HERE>
print(map_4)

# ================================================
# Activity 5: Enhance the User Experience
# ================================================

# Steps:
# Use addEasyButton() for quick actions
# Adjust zoom with setView() or fitBounds()
# Add tooltips, labels, or feedback

# Example:
# map_e <- leaflet(sample_data) %>%
#   addTiles() %>%
#   addMarkers(~lng, ~lat, label = ~name) %>%
#   setView(lng = -122.42, lat = 37.77, zoom = 12),
#   addEasyButton(easyButton(icon = "fa-globe", title = "Reset View", 
#   onClick = JS("function(btn, map){ map.setView([39, -95], 4); }")))  # Add reset button
# print(map_e)

# Try it Out #1: Add labels, set the default zoom, and include an easy button.
# Steps:
# Use label = ~name in addMarkers()
# Use setView() to center your map: setView(lng = -95, lat = 39, zoom = 4) 
# Use addEasyButton() for map reset or zoom

map_5 <- # <YOUR CODE HERE>
print(map_5)