class Specialty_food < ActiveRecord::Base
  validates :tag_id, :presence => true
  validates :recipe_id, :presence => true
end
