class Api::V1::UsersController < ActionController::API

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user= User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.create(username: params[:username], firstname: params[:firstname], lastname: params[:lastname], password: params[:password], email: params[:email])
    render json: @user.to_json
  end

  private

  def user_params
    params.require(:user).permit(:username, :firstname, :lastname, :password, :email)
  end
end
