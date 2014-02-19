class ChargesController < ApplicationController
	before_action :authenticate_user!, except: [:index]
	before_action :check_admin!, only: [:index]

	def index
		@orders = Order.all
	end

	def new
		@photo = Photo.find(params[:photo_id])
	end

	def create
	  # Amount in cents
	  @amount = 500

	  @photo = Photo.find(params[:photo_id])

	  customer = Stripe::Customer.create(
	    :email => 'current_user.email',
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Rails Stripe customer',
	    :currency    => 'gbp'
	  )

	  Order.create(description: 'Photo print', user: current_user, photo: @photo)

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to charges_path
	end

	private

	def check_admin!
		redirect_to '/' unless admin_signed_in?
	end

end
