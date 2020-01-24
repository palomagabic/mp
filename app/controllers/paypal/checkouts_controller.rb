class Paypal::CheckoutsController < ApplicationController
  include Paypal::SDK::REST
  def create
    payment = Payment.new({
      intent: 'sale',
      payer: {
        payment_method: 'paypal'
      },
      redirect_urls: {
        return_url: complete_paypal_checkouts_url,
        cancel_url: index
      },
      transaction: [
        {
          amount: {
            total: 50000,
            currency: 'CPL'
          },
          description: 'Pago de servicio'
        }
      ]
      })
      if payment.create
        redirect_url = payment.links.find {|v| v.rel == 'approval_url'}.href

        redirect_to redirect_url
      else
        redirect_to index_path, alert: 'Por favor vuelva a intentarlo'
      end
  end
end
