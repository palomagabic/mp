class SendController < ApplicationController
  def create
    name = params[:name]
    email = params[:email]
    body = params[:comments]
    ContactMailer.contact_send(name, email, body).deliver
    redirect_to send_path, notice: 'Mensaje enviado'
end
end
