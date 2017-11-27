class MileagesController < ProtectedController
  before_action :set_mileage, only: [:show, :update, :destroy]

  # GET /mileages
  def index
    @mileages = current_user.mileages.order('purchase_date')

    render json: @mileages
  end

  def show
    render json: current_user.mileages.find(params[:id])
  end

  # POST /mileages
  def create
    @car = current_user.cars.find(mileage_params[:car_id])

    if (@car.id)
      @mileage = current_user.mileages.build(mileage_params)

      if @mileage.save
        render json: @mileage, status: :created
      else
        render json: @mileage.errors, status: :unprocessable_entity
      end
    else
      render json: { error: { message: 'Invalid Parameters' } }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mileages/1
  def update
    @car = current_user.cars.find(mileage_params[:car_id])

    if @car.id.to_s == mileage_params[:car_id].to_s

      if @mileage.update(mileage_params)
        render json: @mileage
      else
        render json: @mileage.errors, status: :unprocessable_entity
      end
    else
      render json: { error: { message: 'Invalid Parameters' } }, status: :unprocessable_entity
    end
  end

  # DELETE /mileages/1
  def destroy
    @mileage.destroy
  end

  private
    def set_mileage
      @mileage = current_user.mileages.find(params[:id])
    end


    # Only allow a trusted parameter "white list" through.
    def mileage_params
      params.require(:mileage).permit(:car_id, :purchase_date, :gallons_of_gas, :trip_miles, :price_of_gas)
    end
end
