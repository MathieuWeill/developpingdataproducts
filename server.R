library(shiny)

# Rely on the 'Areas of the World's Major Landmasses' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$USPersonalExpenditure <- renderPlot({
    
    # Render a barplot
    barplot(islands[,input$area]*1000, 
            main=input$area,
            ylab="Number of Landmasses",
            xlab="Year")
  })
})
