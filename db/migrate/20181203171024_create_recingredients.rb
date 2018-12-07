class CreateRecingredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recingredients do |t|
      t.belongs_to :recipe
      t.belongs_to :ingredient
      t.string :quantity
      t.string :unit
      t.timestamps
    end
  end
end
