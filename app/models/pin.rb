class Pin < ApplicationRecord
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>"}
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]	
	validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
	validates :image, presence: true
  validates :description, presence: true
end
