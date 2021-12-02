class OrderMailer < ApplicationMailer
  default from: 'Denys Yarymovych <project@example.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
 def received(order)
    @order = order
    mail to: order.email, subject: 'Your order from GamesShop has been received.'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(order)
    @order = order
    mail to: order.email, subject: 'Your order from GamesShop has been shipped!'
  end
end
