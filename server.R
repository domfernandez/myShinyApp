library(shiny)
# Server Logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Just a simple Shiny App that generates a Histogram.
  # It is wrapped in a call to renderPlot.
  # The "application" is reactive to the users' input
  # - achieved through the use of a Slider
  output$distPlot <- renderPlot({
    x    <- faithful[, 2]  # Old Faithful Geyser data
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'cyan', border = 'yellow',
         main="Just a regular Histogram")
  })

})
