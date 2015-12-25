library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
  
  # Application title
  titlePanel(title = h2("Simple Shiny App", align = "center")),
  
  # Sidebar with controls to select 
  
  sidebarLayout(
    sidebarPanel(
      textInput("caption", "1. Write a Header Title", "title"),
      
      selectInput("dataset", "2. Select a dataset:",
                  c("cars" = "cars",
                    "rock" = "rock",
                    "women" = "women")),
      
 
      sliderInput("obs", "3. Slide the number of observations to view", 
                  min=0, max=100, value=10),
      

      radioButtons("color", "4. Select the color of histogram", 
                   c("Green",
                     "Red",
                     "Yellow"),selected="Green")),
    
    # Show a tabset 
  
    mainPanel(
      h3(textOutput("caption", container = span)),
      tabsetPanel(type = "tabs", 
                  tabPanel("Plot",plotOutput("plot")),
                  tabPanel("Summary", verbatimTextOutput("summary")), 
                  tabPanel("Structure", verbatimTextOutput("structure")),
                  tabPanel("Table", tableOutput("view")),
                  tabPanel("Documentation", verbatimTextOutput("documentation"))
      )
   
    )
  )
))