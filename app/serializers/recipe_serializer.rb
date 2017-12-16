class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :user_recipes
  has_many :bakers, through: :user_recipes, source: :user
end
