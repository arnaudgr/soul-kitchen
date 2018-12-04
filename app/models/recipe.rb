class Recipe < ApplicationRecord
  has_many :ingredients, through: :recingredients
  has_many :categories, through: :categorecipes
end
