class Recipe < ActiveRecord::Base
  validates :name, :presence => true
  validates :author, :presence => true
  validates :ingredients, :presence => true
  validates :instructions, :presence => true

  has_many :tags, through: :specialty_foods
end
