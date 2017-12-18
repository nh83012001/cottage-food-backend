class Api::V1::RecipesController < ActionController::API
  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def create

    @recipe = Recipe.new(name: params[:name], course_type: params[:course_type], price: params[:price], description: params[:description])

    @recipe.save
    # @user = User.find(params[:id])
    # @user << @recipe
    render json: @recipe.to_json
  end

  def show
    @recipes = Recipe.find(params[:id])
    render json: {recipe: @recipes , users: @recipes.bakers}
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
  end

  private

		def recipe_params
			params.require(:recipe).permit(:name, :course_type, :price, :description)
		end

end
