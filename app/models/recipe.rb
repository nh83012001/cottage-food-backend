class Recipe < ApplicationRecord
has_many :user_recipes
has_many :bakers, through: :user_recipes, source: :user

has_many :recipes_transactions
has_many :transacts, through: :recipes_transactions

has_many :purchasers, through: :transacts, source: :purchaser


end
