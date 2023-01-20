server <- function(input, output){
  #trout_df
  trout_filtered_df <- reactive({
    validate(
      need(length(input$channel_type_input) > 0, "select at least one channel type"),
      need(length(input$section_input) > 0, "select at least one forest type")
    ) 

    clean_trout |> 
      filter(channel_type %in% c(input$channel_type_input)) |> 
      filter(section %in% c(input$section_input))
    
 
  })
  output$trout_scatterplot <- renderPlot(({
    ggplot(trout_filtered_df(), 
           aes(x = length_mm,
               y = weight_g,
               color = channel_type)) + 
      geom_point() + scale_color_manual(values = c("R" = "blue", "C" = "purple",
                                                   "S" = "black", "P" = "yellow",
                                                   "SC" = "pink", "I" = "red",
                                                   "IP" = "green"))
  }))
}