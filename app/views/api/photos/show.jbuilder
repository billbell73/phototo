json.(@photo, :caption, :latitude, :longitude)
json.photo_url @photo.pic.url(:medium)
json.url photo_url(@photo)
