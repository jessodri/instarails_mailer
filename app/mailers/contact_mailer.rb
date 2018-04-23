class ContactMailer < ApplicationMailer
    default to: current_user.email

   def send_contact_email(params)
    @name = params[:name]
    @message = params[:message]
    date = Time.now.strftime("%B %d, %Y, %A")
    subject = "New user message: #{date}"
    mail(subject: subject)
   end


end
