library(shiny)
APCval <- function(permanent, transitory, save) ((1-(save/100))*permanent)/(permanent + transitory)

shinyServer(
  function(input, output) {
    output$APC <- renderPrint({APCval(input$permanent, input$transitory, input$save)})
  }
)
