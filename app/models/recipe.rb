class Recipe < ApplicationRecord
has_many :user_recipes
has_many :recipes_transactions

end
