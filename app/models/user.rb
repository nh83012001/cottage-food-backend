class User < ApplicationRecord
  has_many :purchaser_transactions, foreign_key: :purchaser_id, source: :transaction


  # has_many :baker_relationships, foreign_key: :baker_id, class_name: 'Transaction'
  # has_many :bakers, through: :baker_relationships, source: :baker
  #
  # has_many :purchaser_relationships, foreign_key: :purchaser_id, class_name: 'Transaction'
  # has_many :purchasers, through: :purchaser_relationships, source: :purchaser
  # has_many :recipes_transactions, through: :transactions


  has_many :user_recipes
  has_many :baked_recipes, through: :user_recipes, source: :recipe




  has_secure_password
  validates :username, presence: true
  validates :username, uniqueness: true


end
