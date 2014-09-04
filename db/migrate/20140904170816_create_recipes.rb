class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.column :name, :string
      t.column :author, :string
      t.column :ingredients, :text
      t.column :instructions, :text

    end
  end
end
