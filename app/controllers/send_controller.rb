class SendController < ApplicationController
  def index
    @names = ' - Contacto'
  end

  def create
    name = params[:name]
    email = params[:email]
    body = params[:comments]
    ContactMailer.contact_send(name, email, body).deliver
    redirect_to send_path, notice: 'Mensaje enviado'
  end
end
