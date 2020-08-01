library(shiny)

shinyServer(
    function(input, output) {
        data(mtcars)
        output$inputValue <- renderPrint({input$hp_slider})
        output$prediction <- renderPrint({
            hpnew <<- input$hp_slider
            fit <- lm(mpg ~ hp, mtcars)
            predict(fit, newdata = data.frame(hp = hpnew))})
    }
)