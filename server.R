#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

data(mtcars)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$plot1 <- renderPlot({
    minX <- input$sliderX[1] 
    maxX <- input$sliderX[2] 
    minY <- input$sliderY[1] 
    maxY <- input$sliderY[2] 
    
    ggplot(mtcars, aes(wt, mpg, color=cyl)) +
      geom_point() +
      xlim(minX, maxX) +
      ylim(minY, maxY)
    
  })
  
})
