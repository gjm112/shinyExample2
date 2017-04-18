shinyUI(fluidPage(
  ###########################
  #Panels
  ###########################
  titlePanel("title panel"),
  
  sidebarLayout(
    sidebarPanel("sidebar panel"),
    mainPanel(
        h1("Large Text"),
        h3("Smaller Text"),
        code("If you have code you can do this"),
        p("Colored text",style="color:blue")
      )
  )
  
  
))