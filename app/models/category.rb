class Category < ApplicationRecord
  has_many :recipes, through: :categorecipes
  has_many :users, through: :user_categorie_recipe
end
