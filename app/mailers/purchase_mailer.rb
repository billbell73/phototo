class PurchaseMailer < ActionMailer::Base
  default from: "no_reply@insta_clone.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.purchase_mailer.confirm_order.subject
  #
  def confirm_order(customer, order)
    @order = order
    mail to: customer.email, subject: 'Order Confirmation'
  end
end
