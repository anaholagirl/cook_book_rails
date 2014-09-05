class Tag < ActiveRecord::Base
  validates :name, :presence => true
   has_many :favorites
  has_many :recipes, through: :favorites
end
