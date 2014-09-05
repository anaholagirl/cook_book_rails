class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.column :recipe_id, :integer
      t.column :tag_id, :integer

    end
  end
end
