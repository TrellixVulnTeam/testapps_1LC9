class Post < ApplicationRecord
	belongs_to :user
	has_attached_file :image, styles:
		{ medium: "300x300#", small: "100x100>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
