class Transact < ApplicationRecord
  belongs_to :baker, class_name: 'User'
  belongs_to :purchaser, class_name: 'User'

  has_many :recipes_transactions
  has_many :recipes, through: :recipes_transactions

end
