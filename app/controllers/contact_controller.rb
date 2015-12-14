class ContactController < ApplicationController

def new
  @message = Message.new
#flash[:alert] = "Unable to sent - Missing Information."
end

  def create
    @message = Message.new(params[:message])

    respond_to do |format|
         if @message.valid?
           ContactMailer.contact_me(@message).deliver_now
           format.html {redirect_to(root_path, :notice => "Your message was successfully sent.")}
         else
            
           format.html { redirect_to root_path + "#contact" } 
           format.json { render json: @message.errors, status: :unprocessable_entity }
         end
       end


  end
  
  
  
end