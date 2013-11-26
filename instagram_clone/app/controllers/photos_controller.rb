class PhotosController < ApplicationController

	#before_action :authenticate_user!, except: [:index]

	def index
		@photos = Photo.all
	end

	def new
		@photo = Photo.new
	end

	def create
		#raise params.inspect
		@photo = current_user.photos.build(params[:photo].permit(:caption, :pic))

    if @photo.save
      flash[:notice] = 'Photo added'
      redirect_to photos_path
    else
      render 'new'
    end
  end
	
end
