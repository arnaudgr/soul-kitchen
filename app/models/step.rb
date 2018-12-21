class Step < ApplicationRecord
  belongs_to :recipe

  def self.search(search)
  	where("description LIKE ?", "%#{search}%")
	end

end
