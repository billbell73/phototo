class Order < ActiveRecord::Base

	belongs_to :user
	belongs_to :photo

	after_create :send_customer_email
 
    def send_customer_email
      mail = PurchaseMailer.confirm_order(user, self)
 	    mail.deliver
 	  end

end
