shinyUI(fluidPage(

  # Application title
  titlePanel("Mass Shooting by Year"),

  # Sidebar with a slider input for number of bins

    sidebarPanel(
      h3("Killed"),
      # Select Justices name here
      selectizeInput("name",
                  label = "Select at least One State - Max 5",
                  choices = unique(Ideal_Point_Data$Name),
                  multiple = T,
                  options = list(maxItems = 5,
                                 placeholder = 'Select a name'),
                  selected = "California"

                  ),


      # Term plot
      plotOutput("termPlot", height = 200),

      helpText("Data: Mass Shooting Tracker ")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      graphOutput("trendPlot")
    )
  )
)
