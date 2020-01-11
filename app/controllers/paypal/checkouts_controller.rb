class Paypal::CheckoutsController < ApplicationController
  include Paypal::SDK::REST
  def create
    payment = Payment.new({
      intent: 'sale',
      payer: {
        payment_method: 'paypal'
      },
      redirect_urls: {
        return_url: games_path,
        cancel_url: pages_index_path,
      },
      transactions: [
        {
          amount: {
            total: 50000,
            currency: 'CLP'
          },
          description: 'Pago de servicios',
          item: 'mi cuenta'
        }
      ]
      })

      if payment.create
        redirect_url = payment.links.find {|v| v.rel == 'approval_url'}.href

        redirect_to redirect_url

      else
        redirect_to pages_index_path, alert: 'Algo malo paso, por favor intenta denuevo'
      end
  end
end
