class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]
  
  def home
  end

  def contact
  end

  def contact_email
    ContactMailer.send_contact_email(email_params).deliver_now
    render :contact
  end

  private

  def email_params
    params.require(:contact).permit(:name, :message)
  end
end
