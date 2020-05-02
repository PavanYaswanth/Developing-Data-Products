##Peer-graded Assignment: Course Project: Shiny Application and Reproducible Pitch

###Ammonia, the raw material for producing nitrogen fertilizer, is made from natural gas. The production cost of ammonia depends on the price of natural gas.
###The production cost of ammonia($/tonne) is estimated as 36*Natural gas price($/mmbtu)+26
###This shiny app calculates the production cost of ammonia as the change of natural gas price.

library(shiny)

shinyUI(fluidPage(
    titlePanel("Calculation of Ammonia/Urea production cost as the change of natural gas price"),

    sidebarLayout(
        sidebarPanel(
            sliderInput("NG_price","Natural gas price($/mmbtu)",min=3,max=16,value=8,step=1),
            checkboxInput("ammonia","Production Cost of Ammonia",value = TRUE),
            checkboxInput("urea","Production Cost of Urea",value = TRUE)
        ),

        mainPanel(
            plotOutput("plot"),
            h3(textOutput("text"))
        )
    )
))
