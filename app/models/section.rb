class Section < ApplicationRecord
  has_many :admin_users, :through => :section_edits
  has_many :section_edits
  belongs_to :page
end
