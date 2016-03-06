library(shiny)

# Rely on the 'Areas of the World's Major Landmasses' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$USPersonalExpenditureplot <- renderPlot({
    
    # Render a barplot
    barplot(USPersonalExpenditure[,input$en_US]*1000, 
            main=input$en_US,
            ylab="en_US",
            xlab="Year")
  })
})
