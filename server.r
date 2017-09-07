#server file
library(shiny)
library(dplyr)
shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    badipcount <- badip %>% group_by(X3) %>% summarise(count = length(X3))
    par(mar = c(15, 4.1, 4.1, 2.1))
    barplot(badipcount$count, names.arg = badipcount$X3, las = 2, xpd = TRUE)
    
  })
  
})
