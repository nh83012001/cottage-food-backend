class API::V1::TransactsController < ActionController::API
  def index
    @transacts = Transact.all
    render json: @transacts
  end

  def create
    @transact = Transact.new(transact_params)
    @transact.save

  end

  def show
    @transact = Transact.find(params[:user_id])
    render json: @transact
  end

  def update
    @transact = Transact.find(params[:id])
    @transact.update(transact_params)

  end

  private

    def transact_params
      params.require(:transact).permit(:purchaser_id, :baker_id, :delivery_distance, :purchaser_longitude, :purchaser_latitude, :total_cost)
    end
end
