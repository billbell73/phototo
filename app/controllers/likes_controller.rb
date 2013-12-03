class LikesController < ApplicationController

	def create
	
		if current_user.likes.where(photo_id: params[:photo_id]).any?
			current_user.likes.find_by(photo_id: params[:photo_id]).destroy
			destroyed = true
		else
 	  	@like = Like.create(photo_id: params[:photo_id], user: current_user)
 	  	destroyed = false
 	  end

 	  render json: { id: params[:photo_id], email: current_user.email, destroyed: destroyed }

  end
	
end
