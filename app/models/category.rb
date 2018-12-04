class Category < ApplicationRecord
  has_many :recipes, through: :categorecipes
end
