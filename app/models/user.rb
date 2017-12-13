class User < ApplicationRecord
  has_many :transactions
  # has_many :baked_transactions, foreign_key: :baker_id, source: :transaction
  # has_many :purchased_transactions, through: :transactions, source: :recipes_transactions
  # has_many :baked_transactions, through: :transactions, source: :recipes_transactions
  # has_many :purchaser_transactions, foreign_key: :purchaser_id, source: :transaction
  # has_many :recipe_transactions, through:

  has_many :baker_transactions, foreign_key: :baker_id, class_name: 'Transaction'
  has_many :bakers, through: :baker_transactions, source: :baker
  has_many :recipes_transactions, through: :baker_transactions

  has_many :purchaser_transactions, foreign_key: :purchaser_id, class_name: 'Transaction'
  has_many :purchasers, through: :purchaser_transactions, source: :purchaser
  has_many :recipes_transactions, through: :purchaser_transactions


  has_many :user_recipes
  has_many :baked_recipes, through: :user_recipes, source: :recipe




  has_secure_password
  validates :username, presence: true
  validates :username, uniqueness: true


end
