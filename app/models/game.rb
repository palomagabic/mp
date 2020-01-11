class Game < ApplicationRecord
  def to_paypal
    {
      name: 'mi cuenta',
      sku: self.id,
      price: 50000,
      currency: 'CLP',
      quantity: 1
    }
  end
end
