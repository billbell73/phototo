class Photo < ActiveRecord::Base
  belongs_to :user

  has_attached_file :pic,
                 styles: { medium: "400x400>", thumb: "200x200>" }
end

