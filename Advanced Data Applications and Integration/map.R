# Ungraded Lab: Building Interactive Maps

# Load the required library
library(leaflet)  # For building interactive maps

# Built-in example data:
projects <- data.frame(
  name = c("Green Park Cleanup", "Urban Garden Launch", "Beach Restoration", 
           "Tree Planting Drive", "Solar Workshop"),
  lat = c(37.7749, 34.0522, 36.7783, 40.7128, 41.8781),
  lng = c(-122.4194, -118.2437, -119.4179, -74.0060, -87.6298),
  description = c("Community cleanup effort at Green Park.",
                  "Launching new urban garden initiative.",
                  "Restoration event at local beach.",
                  "City-wide tree planting drive.",
                  "Free solar panel installation workshop.")
)

# ================================================
# Activity 1: Create a Basic Interactive Map
# ================================================

# Steps:
# Use leaflet() to initialize the map.
# Use addTiles() to add a base map layer.
# Use addMarkers() to add all project locations.


# Example:
# leaflet(data = sample_projects) %>%
#   addTiles() %>%
#   addMarkers(~lng, ~lat)

# Try it Out #1: Build a base map showing project locations
# Steps:
# Initialize map with leaflet(data = projects)
# Use addTiles() to apply a default map layer
# Plot all locations with addMarkers(~lng, ~lat)
# Hint: You can use ~ to reference column names inside addMarkers().

map_1 <- # <YOUR CODE HERE>
print(map_1)

# ================================================
# Activity 2: Add Popups and Hover Tooltips
# ================================================

# Steps:
# Use the popup argument to display description
# Use the label argument to show the project name on hover


# Example:
# leaflet(data = sample_projects) %>%
#   addTiles() %>%
#   addMarkers(~lng, ~lat, popup = ~description, label = ~name)

# Try it Out #1: Add context to each marker
# Steps:
# Pass popup = ~description to addMarkers()
# Pass label = ~name to show project names when hovered

map_2 <- # <YOUR CODE HERE>
print(map_2)

# ================================================
# Activity 3: Add Multiple Map Layers
# ================================================

# Steps:
# Use addProviderTiles("CartoDB.Positron") for a light theme
# Add group names to both tile layers
# Use addLayersControl() to toggle between them


# Example:
# leaflet(data = sample_projects) %>%
#   addProviderTiles("OpenStreetMap", group = "OSM") %>%
#   addProviderTiles("CartoDB.Positron", group = "Carto") %>%
#   addMarkers(~lng, ~lat, popup = ~description, label = ~name) %>%
#   addLayersControl(baseGroups = c("OSM", "Carto"))

# Try it Out #1: Offer viewers map style choices
# Steps:
# Add two tile layers with different providers
# Assign each to a group
# Use addLayersControl() to switch between views
# Hint: Use group = "..." and match these names in addLayersControl().

map_3 <- # <YOUR CODE HERE>
print(map_3)

# ================================================
# Activity 4: Customize Markers and Zoom Level
# ================================================

# Steps:
# Use makeIcon() to customize icons
# Pass icon = myIcon to addMarkers()
# Use setView() to define default map center and zoom


# Example:
# myIcon <- makeIcon(
#   iconUrl = "https://leafletjs.com/examples/custom-icons/leaf-green.png",
#   iconWidth = 30, iconHeight = 40
# )

# leaflet(data = sample_projects) %>%
#   addTiles() %>%
#   addMarkers(~lng, ~lat, icon = myIcon) %>%
#   setView(lng = -95, lat = 39, zoom = 4)

# Try it Out #1: Style your map and focus the view
# Steps:
# Define an icon using makeIcon()

myIcon <- makeIcon(
  # <YOUR CODE HERE>
)

# Use setView() to center the map
# Pass your icon to addMarkers()
# Hint: Set lat/lng in setView() to center your markers.
map_4 <- # <YOUR CODE HERE>
print(map_4)