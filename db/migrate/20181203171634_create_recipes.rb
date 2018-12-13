class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :timeprep
      t.integer :timecook
      t.string :image_url
      t.integer :price
      t.timestamps
    end
  end
end
