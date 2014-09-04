class CreateSpecialtyFoods < ActiveRecord::Migration
  def change
    create_table :specialty_foods do |t|
      t.column :recipe_id, :integer
      t.column :tag_id, :integer

    end
  end
end
