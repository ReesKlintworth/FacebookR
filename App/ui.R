library(shiny)

shinyUI(fluidPage(
  titlePanel("FacebookR"),
  mainPanel(
    textOutput("name"),
    textOutput("num_friends"),
    tags$img(src=output$picture)
  )
))