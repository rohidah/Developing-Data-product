library(shiny)
library(datasets)

# Define server logic required to summarize and view the selected
# dataset
shinyServer(function(input, output) {
  
  # Return the requested dataset
  datasetInput <- reactive({
    switch(input$dataset,
          "cars" = cars,
           "rock" = rock,
           "women" = women)
  })
  output$caption <- renderText({
    input$caption
  })
  
  # Generate a summary of the dataset
  output$summary <- renderPrint({
    dataset <- datasetInput()
    summary(dataset)
  })
  
 output$structure <- renderPrint({
    dataset <- datasetInput()
    str(dataset)
  })
  
 # Show the first "n" observations
  output$view <- renderTable({
    head(datasetInput(), n = input$obs)
  })
  
  output$documentation <-renderText({ 
        paste("This is a simple Shiny App that was developed to show the various widgets thatcan be applied to the App. This App has 2 sections, a sidebar which is on the left of the App and the main screen that contains the tabs. The sidebar panel has 4 control items. Title textbox allow user to customize the main page title. The second control item allows the user to select dataset and the third item give controls on how many observatrions will be showed under the Table tab. The forth control allow the use to select the color of the histogram. On the Main Page, there are 4 tabs. First tab displays the histogram of the dataset selected. Second tab show the summary while the third tab shows the observations. The no of observations displayed is based on the number selected by user in the sidebar. forth tab displays the dataset structure. The Documentation tab is to display this text")
    })
  
  output$plot <- renderPlot({
    dataset <- datasetInput()
    hist(dataset[,1],breaks=seq(0,as.integer(max(dataset[,1])),l=input$obs),col=input$color,xlab=names(dataset[1]))
  })
})
