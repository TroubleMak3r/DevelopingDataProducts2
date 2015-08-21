library(shiny)
library(ggplot2)



shinyUI(navbarPage("coursera project",
                   tabPanel(title = "How average are you?",
    fluidRow(
        h3('How average are you?'),
        p("All of us think we're something special and noone wants to be called average. But as a matter of fact, we're all much the same: we all have similar feelings
          (happiness, love, hatred), we all go to work/school, eat similar things. All of us wear different clothes to stand out but if you take a closer look... they're all very alike.
However, there are some physical features that can be easily measured and compared with each other. If you're willing to know how similar are you to an average person living on earth
fill the details below and find out: how average are you?"),
        br()
        
        ),
    
#    plotOutput('plot'),
    
#    hr(),
    
    fluidRow(
        column(6,
               h4("Tell me more about yourself"),
               
               radioButtons("sex", label = h3("I'm a"),
                            choices = list("man" = "male", "woman" = "female"),selected = "male"),
        
        numericInput("age",width = "70px", label="My age is:",
                     value = 1),
        
        numericInput("height",width = "70px", label="My height (in cm) is:",
                     value = 1),

        actionButton("goButton", "Go!"),
               br()
        ),
        column(6,br(),br(),br(),
               htmlOutput("text1")   
        )     
    ),
    fluidRow(
        column(3,offset = 2),
        column(9,
               hr(),

             htmlOutput("sexx") ,
             br(),br(),
             uiOutput('sex_img'),
             
             br(),br(),
             
             htmlOutput("age"),
             uiOutput('age_img'),
           
             br(),br(),
             
             htmlOutput("height"),
             uiOutput('height_img'),br(),hr()
        )
       )
),
tabPanel("Documentation",
         p("The application takes the data entered by user (user's sex, age and height) and then, once the user presses 'go' button, compares it to world's average values of those features. Moreover, it displays some graphics showing differences in average values of those features across countries.")
)
))
