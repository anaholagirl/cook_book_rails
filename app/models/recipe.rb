class Recipe < ActiveRecord::Base
  validates :name, :presence => true
  validates :author, :presence => true
  validates :ingredients, :presence => true
  validates :instructions, :presence => true

  has_many :favorites, :dependent => :destroy
  has_many :tags, through: :favorites
end
