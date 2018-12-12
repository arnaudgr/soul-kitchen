class Recipe < ApplicationRecord
  has_many :ingredients, through: :recingredients
  has_many :categories, through: :categorecipes
  has_many :steps
  has_many :reviews
 end
