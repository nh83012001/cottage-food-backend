class User < ApplicationRecord
  has_many :baker_transactions, foreign_key: :baker_id, class_name: 'Transact'

  has_many :recipes_transactions, foreign_key: :transaction_id, through: :baker_transactions
  has_many :sold_recipes, through: :recipes_transactions, class_name: 'Recipe', source: :recipe

  has_many :purchaser_transactions, foreign_key: :purchaser_id, class_name: 'Transact'
  has_many :recipes_transactions, foreign_key: :transaction_id, through: :purchaser_transactions
  has_many :purchased_recipes, through: :recipes_transactions, class_name: 'Recipe', source: :recipe

  has_many :user_recipes
  has_many :baked_recipes, through: :user_recipes, source: :recipe

  has_secure_password
  validates :username, presence: true
  validates :username, uniqueness: true


end
