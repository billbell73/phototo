class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :charge

  has_attached_file :pic,
                 styles: { medium: "400x400>", thumb: "200x200>" }

  has_and_belongs_to_many :tags

  has_many :likes
  has_many :users, :through => :likes

  # def tag_names
  #   ''
  # end

  # def tag_names=(tags_string)
  #   tags_string.split(' ').each do |tag|
  #  		self.tags << Tag.create(content: tag)
 	#   end
 	# end

end
