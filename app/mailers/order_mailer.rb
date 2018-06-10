class OrderMailer < ApplicationMailer
   default from: 'Sam Ruby <depot@example.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  ##
  #
  # def received
  #   @greeting = "Hi"
  #   mail to: "to@example.org"
  # end
  # Subject can be set in your I18n file at config/locales/en.yml
# with the following lookup:
##  
#
  # def shipped
  #   @greeting = "Hi"
  #   mail to: "to@example.org"
  # end
  def shipped(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end
  def received(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end
end