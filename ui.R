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
                  h6("Thank Your For Visiting My Shiny World!"),
                  img(src="DomFernandez.png", height = 100, width = 100),
                  p(h6("Connect with me on "),
                    a("< Linked_In >", 
                      href = "http://www.linkedin.com/profile/view?id=5576436")),
                  checkboxGroupInput("checkGroup", label = h6("Please Rate"), 
                                     choices = 
                                       list("Good" = 1, "Better" = 2, "BEST" = 3),
                                     selected = 3),
                  
                  
                  hr(),
                  fluidRow(column(3, verbatimTextOutput("value")))
                  
                ),
                
                # Show a plot of the generated distribution
                mainPanel(
                  plotOutput("distPlot"),
                  sliderInput("bins", "Number of bins:",
                              min = 5, max = 30, value = 10),
                  h6(">Use Slider To Change"),
                  h6("number of bins [bars] on the Histogram")
                )
  )
))
