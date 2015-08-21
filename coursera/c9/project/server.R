library(shiny)

shinyServer(
  function(input, output) {
    output$age <- renderText({input$age})
    output$text1 <- renderUI({
             
    if (input$goButton == 0) {str1<-"When you're ready press the go button"
                                                        HTML(paste(str1))  }

     else {    
         str1 <- paste("Looks like you're a", input$age, "year old ",input$sex,", ",input$height,"cm high.")
         str2 <- paste("Now let's compare it to world's average")
         str3<-paste("You could have put more effort into it but nevermind.")
         HTML(paste(str1, str2, sep = '<br/>'))
    if (input$sex=="male"&&input$height==1&&input$age==1&&input$goButton != 0){ HTML(paste(str1,str3,str2, sep = '<br/>'))}
    else HTML(paste(str1, str2, sep = '<br/>'))
     } 
     })
    output$sexx <- renderUI({
        male1 <- paste("Ok, so you're a male, making you average from the very beggining - according to the latest data, the sex ratio for the entire world population is 101 males to 100 females. However, those figures vary across countries. You'd be of much more value in Russia (there are 86.8 men for every 100 women in Russia) but definately more average in United Arab Emirates - with 274 men for every 100 women.")
        female1 <- paste("Ok, so you're a female, which makes you less average at the start- according to the latest data, the sex ratio for the entire world population is 101 males to 100 females. However, those figures vary across countries. You'd be of much more value in United Arab Emirates - with 274 men for every 100 women-  but definately more average in Russia (there are 86.8 men for every 100 women in Russia)")
        aia<-paste("ss")
        if (input$goButton == 0) {nic<-""
                                  HTML(paste(nic))  }
        
        else {    
           
           if (input$sex =="male") {HTML(paste(male1))}
           else {HTML(paste(female1))}
        }
        
    })
    output$sex_img <- renderUI({
        if (input$goButton > 0) { div(img(src = "sex.png",allign="middle"), style="text-align: center;")}
    })

    output$age <- renderUI({
        
        if (input$goButton > 0) {    
            ile<-abs(29.7-input$age)
            older<-paste("You're ",ile,"years older than the average person on earth - the world median age is 29.7. You've already been average when it comes to age. However, those figures vary across coountries - for more information, see the graphic below" )
            younger<-paste("You're ",ile,"years younger than the average person on earth - the world median age is 29.7. Therefore, you're about to be average some time soon. However, those figures vary across coountries - for more information, see the graphic below" )
                                     
              
            if (as.numeric(input$age )>29.7){ HTML(paste(older))}
            else { HTML(paste(younger))}
        }
        
    })
    output$age_img <- renderUI({
        if (input$goButton > 0) { div(img(src = "age.gif"), style="text-align: center;")}
    })
    
    #height
    
    output$height <- renderUI({
        
        if (input$goButton > 0) {    
            ilef<-abs(162.1-as.numeric(input$height))
            ilem<-abs(176.1-as.numeric(input$height))
            fh<-paste("You're ",ilef,'cm higher than average woman, at least average woman in US - no global data is available. However, these figures vary across countries. For more info click <a href="https://en.wikipedia.org/wiki/Template:Average_height_around_the_world">here</a>')
            ms<-paste("You're ",ilem,'cm shorter than average man, or at least average man in US - no global data is available. However, these figures vary across countries. For more info click <a href="https://en.wikipedia.org/wiki/Template:Average_height_around_the_world">here</a>')
            fs<-paste("You're ",ilef,'cm shorter than average woman, at least average woman in US - no global data is available. However, these figures vary across countries. For more info click <a href="https://en.wikipedia.org/wiki/Template:Average_height_around_the_world">here</a>')
            mh<-paste("You're ",ilem,'cm higher than average man, or at least average man in US - no global data is available. However, these figures vary across countries. For more info click <a href="https://en.wikipedia.org/wiki/Template:Average_height_around_the_world">here</a>')
            
            #,a("here",     href="https://en.wikipedia.org/wiki/Human_height")        
            if (input$sex=="female"&&input$height>162.1){ HTML(paste(fh))}
            else if (input$sex=="female" && input$height<162.1){ HTML(paste(fs))}
            else if (input$sex=="male"&&input$height>176.1){ HTML(paste(mh))}
            else if (input$sex=="male"&&input$height<176.1){ HTML(paste(ms))}
        }
        
    })
    
    output$height_img <- renderUI({
        if (input$goButton > 0) { div(img(src = "tallshort.gif"), style="text-align: center;")}})
    
   
    })
 