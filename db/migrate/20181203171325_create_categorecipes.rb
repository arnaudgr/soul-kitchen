class CreateCategorecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :categorecipes do |t|
      t.belongs_to :recipe
      t.belongs_to :category
      t.timestamps
    end
  end
end
