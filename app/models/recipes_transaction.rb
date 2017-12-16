class RecipesTransaction < ApplicationRecord
  belongs_to :recipe
  belongs_to :transact
end
