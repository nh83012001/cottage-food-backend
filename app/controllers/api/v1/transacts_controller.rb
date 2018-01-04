class Api::V1::TransactsController < ActionController::API
  def index
    @transacts = Transact.all
    render json: @transacts
  end

  def create
    @transact = Transact.new(transact_params)
    @purchaser_name = User.find(params[:purchaser_id]).firstname
    @transact.purchaser_name = @purchaser_name
    @baker_name = User.find(params[:baker_id]).firstname
    @transact.baker_name = @baker_name
    @transact.save
    render json: @transact.id
  end

  def show
    @transact = Transact.find(params[:id])
    render json: @transact
  end

  def update
    @transact = Transact.find(params[:id])

    @transact.update(transact_params)
  end

  def destroy
    @transact = Transact.find(params[:id])
    @transact.destroy
  end

  private

    def transact_params
      params.require(:transact).permit(:purchaser_id, :baker_id, :baker_name, :purchaser_name, :delivery_distance, :purchaser_longitude, :purchaser_latitude, :total_cost, :delivery_date_time)
    end
end
