class ContactMailer < ApplicationMailer
  default from: “Mente Pequeña <contacto@childbrain.cl>”
  def contact_send(params)
    @parameters=params
    mail(to:’palo.cortes@alumnosduoc.cl’,subject:@parameters[:subject])
  end
end
