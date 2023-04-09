class UserMailer < ApplicationMailer
    def user_created(user)
        @user = user
        
        @url  = 'www.networkleed.com' 
       # @user = User
        #@greeting = "Hi"
    
        mail(
          from: "networkleed@gmail.com",
           to: @user.email,
           #cc: User.all.pluck(:email),
           #bcc: "secret@jerry.com",
           subject: "Bienvenue sur networkleed" 
         )
      end
end
