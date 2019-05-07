# Define UI

create_main_panel <- function(title)
{
  main_panel <- mainPanel
  (
    tabsetPanel(type="tabs",
                tabPanel("Availability"),
                tabPanel("Performance"),
                tabPanel("Quality"))
  )
  return(main_panel)
}

main_panel <- mainPanel
(
  tabsetPanel(type="tabs",
              tabPanel("Availability"),
              tabPanel("Performance"),
              tabPanel("Quality"))
)

tab_test <- tabPanel("Test")

ui <- fluidPage(
  
  titlePanel("CEGEMI"),
  
  sidebarLayout(
    sidebarPanel("Menu"),
    mainPanel
    (
      tabsetPanel(type="tabs",
                  tabPanel("Availability"),
                  tabPanel("Performance"),
                  tabPanel("Quality"))
    )
  )
)

# Define server logic
server <- function(input, output, session) {}

# Run the app
shinyApp(ui, server)