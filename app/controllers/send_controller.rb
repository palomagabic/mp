class SendController < ApplicationController
  def index
  end
  def create
    @params= params
    ContactMailer.contact_send(params).deliver
   flash[:notice]= “formulario enviado”
   redirect_to send_path
  end
end
