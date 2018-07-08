class Page < ApplicationRecord
  has_attached_file :permalink
  # validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

   belongs_to :subject
   has_and_belongs_to_many :editors, :class_name => 'AdminUser'
   has_many :sections
  validates_presence_of :name
end
