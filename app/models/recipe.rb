class Recipe < ApplicationRecord
  has_many :ingredients, through: :recingredients
  has_many :categories, through: :categorecipes
  has_many :steps
  has_many :reviews

  def self.search(search)
  	where("title LIKE ?", "%#{search}%")
	end
	# def self.search(*args)
	#   return [] if args.blank?
	#   cond_text, cond_values = [], []
	#   args.each do |str|
	#     next if str.blank?
	#     cond_text << "( %s )" % str.split.map{|w| "title LIKE ?"}.join(" OR ")
	#     cond_values.concat(str.split.map{|w| "%#{w}%"})
	#   end
	#   # all :conditions =>  [cond_text.join(" AND "), *cond_values]
	# end

end