library(Rfacebook)
library(Rook)
library(shiny)

shinyServer(function(input,output){
  access_token <- "CAACEdEose0cBAATeddoDD5yL2NIe4ZBosnBvWElqgFE5SPJmZBL4OijnINreKd1B99WbBPbzR0fZBPRZCAScrZCGgN7ftuqJ2H8kiyfryRH4ewkZBZCmHu67itXHfMgN9Hm0ZBgccWOTS7hGZB3V28nGHpbmI5oyJJzVc1cXV5ZAXCOc6ZAcxofaWXzyGIXlsMf7NT88HgQzkppTFBMmZBbrON3u"
  me <- getUsers("me", token=access_token)
  my_friends <- getFriends(access_token, simplify = FALSE)
  output$name <- renderText({
    me$name
  })
  output$num_friends <- renderText({
    nrow(my_friends)
  })
  output$profile_picture <- renderImage({
    filename <- me$picture
    list(
      src=filename,
      alt="Profile Picture"
    )
  }, deleteFile=FALSE)
})