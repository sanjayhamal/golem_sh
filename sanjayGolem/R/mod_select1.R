#' select1 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_select1_ui <- function(id){
  ns <- NS(id)
  tagList(
    selectInput(ns("naam"), "Select:", choices = c("A", "B", "C", "D")),
    verbatimTextOutput(ns("show1"))
  )
}
    
#' select1 Server Functions
#'
#' @noRd 
mod_select1_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$show1<- renderPrint(paste("You selected option:", input$naam, sep = " "))
 
  })
}
    
## To be copied in the UI
# mod_select1_ui("select1_ui_1")
    
## To be copied in the server
# mod_select1_server("select1_ui_1")
