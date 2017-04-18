titanic<-read.csv("/Users/gregorymatthews/Dropbox/shinyExample2/data/titanic.csv")


shinyServer(
  function(input, output) {

  output$plot1 <- renderPlot({ 
    plot(titanic$Age,titanic$Pclass, main = input$text)
  })
  
  output$plot2 <- renderPlot({ 
    hist(rnorm(input$slider1))
  })
  
  output$text1 <- renderText({ 
    paste("You have selected", input$num)
  })
  
  output$text2 <- renderText({ 
    paste("You have selected", input$text)
  })
  
  
  
  #################
  #Render functions
  #################
  # renderImage	images (saved as a link to a source file)
  # renderPlot	plots
  # renderPrint	any printed output
  # renderTable	data frame, matrix, other table like structures
  # renderText	character strings
  # renderUI	a Shiny tag object or HTML
  
  })