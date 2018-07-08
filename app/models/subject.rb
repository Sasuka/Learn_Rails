class Subject < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :position

  scope :visible, lambda { where(:visible => true)}
  scope :invisible, lambda { where(:visible => false)}
  scope :sorted, lambda { order("subjects.position ASC")}
  scope :news_first, lambda { order("subjects.created_at DESC")}
  scope :search, lambda { |query|
    where (["name LIKE ?", "%#{query}%"])
  }

  has_many :pages
end
