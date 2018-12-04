class CreateUserCategorieRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_categorie_recipes do |t|
      t.belongs_to :user
      t.belongs_to :category
      t.timestamps
    end
  end
end
