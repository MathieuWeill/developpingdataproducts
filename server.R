library(shiny)

# Rely on the 'Areas of the World's Major Landmasses' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$phonePlot <- renderPlot({
    
    # Render a barplot
    barplot(Areas of the World's Major Landmasses[,input$region]*1000, 
            main=input$region,
            ylab="Number of Landmasses",
            xlab="Year")
  })
})
