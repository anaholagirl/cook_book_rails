class Tag < ActiveRecord::Base
  validates :name, :presence => true
  has_many :favorites, :dependent => :destroy
  has_many :recipes, through: :favorites
end
