class LikesController < ApplicationController

	def create
	
		if current_user.likes.where(photo_id: params[:photo_id]).any?
			current_user.likes.find_by(photo_id: params[:photo_id]).destroy
			#redirect_to '/'
			render json: { id: params[:photo_id], email: current_user.email }
		else
 	  	@like = Like.create(photo_id: params[:photo_id], user: current_user)
 	  	render json: { id: params[:photo_id], email: current_user.email }
 	  end


		
		
  end
	
end
