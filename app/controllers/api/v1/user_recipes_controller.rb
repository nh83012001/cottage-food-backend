class API::V1::UserRecipesController < ActionController::API
  def create
    @recipe = Recipe.find_or_create_by(user_recipe_params)
    @user = User.find(params[:current_user_id])
    @user.recipes << @recipe

    render json: {current_user: @user, recipes: @user.baked_recipes, sold_recipes: @user.sold_recipes, purchaser_transactions: @user.purchaser_transactions, baker_transactions: @user.baker_transactions, purchased_recipes: @user.purchased_recipes}

  end

  private

    def user_recipe_params
      params.require(:recipe).permit(:user_id,:name, :course_type, :price, :description, :image)
    end

end
