require 'rails_helper'

describe Favorite do
  it{ should validate_presence_of :recipe_id}
  it{ should validate_presence_of :tag_id}


  it{ should belong_to :recipe}
  it{ should belong_to :tag}
end
