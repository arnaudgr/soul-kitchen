class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :step_1
      t.text :step_2
      t.text :step_3
      t.text :step_4
      t.text :step_5
      t.text :step_6
      t.text :step_7
      t.text :step_8
      t.text :step_9
      t.text :step_10
      t.text :step_11
      t.text :step_12
      t.text :step_13
      t.text :step_14
      t.text :step_15
      t.integer :time
      t.string :image_url
    end
  end
end
