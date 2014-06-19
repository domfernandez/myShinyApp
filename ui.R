###
# runApp("_myShinyApp", display.mode = "showcase")
###
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Dom Fernandez's Shiny World!"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(position="right",
                sidebarPanel(
                  sliderInput("bins", "Number of bins:",
                              min = 5, max = 30, value = 10),
                  h6(">"),
                  h4("Use Slider To Change"),
                  h5("number of bins [bars] on the Histogram"),
#                  helpText("use the Slider to change the number of bins [bars on the Histogram]"),
                  h6("Thank Your For Visiting My Shiny World!")
                ),
                
                # Show a plot of the generated distribution
                mainPanel(
                  p(h5("Connect with me on "),
                    a("< Linked_In >", 
                      href = "http://www.linkedin.com/profile/view?id=5576436")),
                  plotOutput("distPlot")
                  
                )
  )
))
