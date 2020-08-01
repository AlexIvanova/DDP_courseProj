library(shiny)

shinyUI(fluidPage(
    titlePanel("Prediction of mpg"),
    sidebarLayout(
        sidebarPanel(
            helpText("Prediction of mpg considering other variables"),
            sliderInput("hp_slider", "Select Horsepower", min = 52, 
                        max = 335, value = 146, step= 0.5),
            ),
            mainPanel(
                h3('Results of prediction'),
                h4('You entered'),
                verbatimTextOutput("inputValue"),
                h4('Which resulted in a prediction of '),
                verbatimTextOutput("prediction")
            )
        )
    )
)