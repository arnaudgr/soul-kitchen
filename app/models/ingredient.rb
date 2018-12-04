class Ingredient < ApplicationRecord
  has_many :recipes, through: :recigredients
end
