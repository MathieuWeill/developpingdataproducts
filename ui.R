library(shiny)

# Rely on the 'islands' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Areas of the World's Major Landmasses"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("region", "Region:", 
                    choices=colnames(islands)),
        hr(),
        helpText("Areas of the World's Major Landmasses.")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("LandmassesPlot")  
      )
      
    )
  )
)
