class Api::PhotosController < ApplicationController
	respond_to :json
 
	  def index
	    @photos = Photo.all
 	  end

 	  def show
 	  	@photo = Photo.find(params[:id])
 	  end

end