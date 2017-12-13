class RecipeTransaction < ApplicationRecord
  belongs_to :recipe
  belongs_to :transaction
end
