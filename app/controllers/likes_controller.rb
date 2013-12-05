class LikesController < ApplicationController

	def create
		like_json = Like.toggle_like(current_user, params[:photo_id])
		
		render json: like_json

		# like = current_user.likes.where(photo_id: params).first
	
		# if like
		# 	like_id = like.id
		# 	like.destroy
		# 	destroyed = true
		# else
 	#   	@like = Like.create(photo_id: params[:photo_id], user: current_user)
 	#   	like_id = @like.id
 	#   	destroyed = false
 	#   end

 	  # puts "destroyed: #{destroyed}"

 	  # render json: { photo_id: params[:photo_id], like_id: like_id, email: current_user.email, destroyed: destroyed }

  end
	
end
