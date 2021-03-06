class AdminUser < ApplicationRecord
  has_many :sections, :through => :section_edits
  has_many :section_edits

  attr_accessor :first_name

  has_and_belongs_to_many :pages

end
