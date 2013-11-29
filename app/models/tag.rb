class Tag < ActiveRecord::Base

	has_and_belongs_to_many :photos
  validates :content, length: {minimum: 2}


	def self.create_tags_for!(tag_list, photo)
		tag_list.split(' ').each do |tag_content|
      slug = tag_content.gsub('#', '').downcase
   		photo.tags << find_or_create_by!(content: tag_content, slug: slug)
 	  end
	end

	def tag_names
    ''
  end

  def to_param
    slug
  end

  # def tag_names=(tags_string, photo)
  #   tags_string.split(' ').each do |tag|
  #  		photo.tags << self.create(content: tag)
 	#   end
 	# end

end
