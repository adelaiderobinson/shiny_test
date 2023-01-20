ui <- navbarPage(
  
  title = "LTER Animal Data Explorer",
  
  # (Page 1) intro tabPanel ----
  tabPanel(title = "About this App",
           
           "background info will go here"  # REPLACE THIS WITH CONTENT
           
  ), # END (Page 1) intro tabPanel
  
  # (Page 2) data viz tabPanel ----
  tabPanel(title = "Explore the Data",
           
           # tabsetPanel to contain tabs for data viz ----
           tabsetPanel(
             
             # trout tabPanel ----
             tabPanel(title = "Trout",
                      
                      # trout sidebarLayout ----
                      sidebarLayout(
                        
                        # trout sidebarPanel ----
                        sidebarPanel(
                          
                          pickerInput(
                            inputId = "channel_type_input",
                            label = "select channel type (s)",
                            choices = unique(clean_trout$channel_type),
                            options = pickerOptions(actionsBox = TRUE),
                            selected = c("C", "S"),
                            multiple = TRUE
                          ), # channel type picker input
                #checkboxGroupButtonInput
                checkboxGroupButtons(inputId = "section_input",
                                     label = "Select a sampling section(s)",
                                     choices = unique(clean_trout$section),
                                     selected = c("clear cut forest"),
                                     individual = FALSE, justified = TRUE,
                                     checkIcon = list(yes = icon("ok",
                                                                 lib = "glyphicon"),
                                                      no = icon("remove",
                                                                lib = "glyphicon"))
                  
                )
                        ), # END trout sidebarPanel
                        
                        # trout mainPanel ----
                        mainPanel(
                          
                      plotOutput(outputId = "trout_scatterplot") # REPLACE THIS WITH CONTENT
                          
                        ) # END trout mainPanel
                        
                      ) # END trout sidebarLayout
                      
             ), # END trout tabPanel 
             
             # penguin tabPanel ----
             tabPanel(title = "Penguins",
                       
                       # penguin sidebarLayout ----
                       sidebarLayout(
                         
                         # penguin sidebarPanel ----
                         sidebarPanel(
                           
                           "penguin plot input(s) go here" #replace
                           
                         ), # END penguin sidebarPanel
                         
                         # penguin mainPanel ----
                         mainPanel(
                           
                           "penguin plot output goes here" # REPLACE THIS
                           
                         ) # END penguin mainPanel
                         
                       ) # END penguin sidebarLayout # REPLACE THIS WITH CONTENT
                      
             ) # END penguin tabPanel
             
           ) # END tabsetPanel
           
  ) # END (Page 2) data viz tabPanel
  
) # END navbarPage