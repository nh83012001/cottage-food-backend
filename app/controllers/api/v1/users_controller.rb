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

    @address = (params[:address] + ' ' + params[:city] + ' ' + params[:state] + ' ' + params[:zip])
    @apiKey =  'AIzaSyCsmeDgEFx6LZXsP0WqJN0B_9bm61_c1ZQ'
    @route = "https://maps.googleapis.com/maps/api/geocode/json?address=#{@address}&key=#{@apiKey}"
    response = HTTParty.get(@route)
    debugger
      @user = User.create(username: params[:username], password: params[:password], email: params[:email],firstname: params[:firstname], lastname: params[:lastname], zip: params[:zip], address: params[:address], phone: params[:phone], city: params[:city], state: params[:state])
      render json: @user.to_json
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

  end

  private

  def user_params
    params.require(:user).permit(:username, :firstname, :lastname, :password, :email, :zip, :address, :phone, :city, :state, :longitude, :latitude )
  end
end
