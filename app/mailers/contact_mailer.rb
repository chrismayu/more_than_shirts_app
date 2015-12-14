class ContactMailer < ApplicationMailer
  
  
  
  default from: ENV["SITE_EMAIL"] 

    def contact_me(message)
      @message = message  
      mail  :to => ENV["ADMIN_EMAIL"] ,  :reply_to => @message.email,  subject:  "ChrisMailloux.com || #{message.subject}"
        
    end
  
end
