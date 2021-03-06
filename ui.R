library(shiny)

# Rely on the 'USPersonalExpenditure' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("USPersonalExpenditure"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("type", "type", 
                    choices=colnames(USPersonalExpenditure)),
        hr(),
        helpText("US Personal Expenditure")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("USPersonalExpenditureplot")  
      )
      
    )
  )
)
