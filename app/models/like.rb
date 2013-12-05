class Like < ActiveRecord::Base

	belongs_to :user
	belongs_to :photo

	def self.toggle_like(current_user, photo_id)
		like = find_or_initialize_by(user: current_user, photo_id: photo_id)
		like_json = like.as_json(include: :user)

		if like.new_record?
			like.save
			like_json.merge!(id: like.id)
		else
			like.destroy
			like_json.merge!(destroyed: true)
		end

		like_json
	end

end
