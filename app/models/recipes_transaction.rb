class RecipesTransaction < ApplicationRecord
  belongs_to :recipe
  belongs_to :transact
  belongs_to :baked_transaction, class_name: "Transaction"
end
