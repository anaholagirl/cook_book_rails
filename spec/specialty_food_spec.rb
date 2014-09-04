require 'rails_helper'

describe Specialty_food do
  it{ should validate_presence_of :recipe_id}
  it{ should validate_presence_of :tag_id}
end
