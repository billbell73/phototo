json.array! @photos do |photo|
	json.(photo, :caption)
		json.photo_url photo.pic.url(:medium)
   	json.url photo_url(photo)
end