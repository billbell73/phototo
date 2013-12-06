class PhotosController < ApplicationController

	#before_action :authenticate_user!, except: [:index]

	def index
		@photos = Photo.all
	end

	def show
		@photo = Photo.find(params[:id])
	end

	def new
		@photo = Photo.new
	end

	def create
		#raise params.inspect
		@photo = current_user.photos.build(params[:photo].permit(:caption, :pic, :tag_names, :location))

    if @photo.save
      flash[:notice] = 'Photo added'
      WebsocketRails[:photos].trigger 'new', @photo
                    # { caption: @photo.caption, image_url: @photo.pic.url(:thumb) }
      redirect_to photos_path
    else
      render 'new'
    end
  end
	
end
