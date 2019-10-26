class ContactMailer < ApplicationMailer
  default to: "palo.cortes@alumnos.duoc.cl"

  def contact_send(name, email, body)
        @name = name
        @email = email
        @body = body

        mail(from: email, subject: 'Contact Request')
    end
end
