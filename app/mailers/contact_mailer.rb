class ContactMailer < ApplicationMailer
  default to: palo.cortes@alumnosduoc.cl

  def contact_send(name, email, body)
        @name = name
        @email = email
        @body = body`enter code here`

        mail(from: email, subject: 'Contact Request')
    end
end
