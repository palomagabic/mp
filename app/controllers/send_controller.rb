class SendController < ApplicationController
  def create
    name = params[:name]
    email = params[:email]
    body = params[:comments]
    ContactMailer.contact_email(name, email, body).deliver
    redirect_to contact_path, notice: 'Message sent'
end
end
