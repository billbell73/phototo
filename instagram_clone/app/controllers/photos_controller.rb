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
		@photo = current_user.photos.build(params[:photo].permit(:caption, :pic, :tag_names))

    if @photo.save
      flash[:notice] = 'Photo added'
      # WebsocketRails[:photos].trigger 'new',
      #               { title: @photo.caption, image_url: @photo.image.url(:medium) }
      redirect_to photos_path
    else
      render 'new'
    end
  end
	
end
