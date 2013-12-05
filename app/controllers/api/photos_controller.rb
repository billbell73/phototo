class Api::PhotosController < ApplicationController
	respond_to :json
 
	  def index
	    @photos = Photo.all
 	  end

end