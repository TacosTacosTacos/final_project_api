class MileagesController < ProtectedController
  before_action :set_mileage, only: [:show, :update, :destroy]

  # GET /mileages
  def index
    # Working
    # @mileagesArray = Array.new
    # @cars = current_user.cars
    # @cars.each { |car| @mileagesArray.push(car.mileages) }
    # @mileages = {
    #   'mileages': @mileagesArray.flatten
    # }
    @mileages = current_user.mileages

    render json: @mileages
  end

  def show
    # @mileagesArray = Array.new
    # @cars = current_user.cars
    # @cars.each { |car| @mileagesArray.push(car.mileages) }
    # @mileages = @mileagesArray.flatten
    # @mileage = @mileages.find(params[:id])
    render json: current_user.mileages.find(params[:id])
    # render json: @mileage
  end

  # POST /mileages
  def create
    @car = current_user.cars.find(mileage_params[:car_id])

    if @car.id.to_s == mileage_params[:car_id].to_s
      @mileage = current_user.mileages.build(mileage_params)

      if @mileage.save
        render json: @mileage, status: :created
      else
        render json: @mileage.errors, status: :unprocessable_entity
      end
    else
      render json: { error: { message: 'Invalid Parameters' } }, status: :unprocessable_entity
    end
    # # Verify the user id is the same as the current users
    # if current_user.cars['cars'].none? { |car| car.id == mileage_params[:car_id] }
    #   render json: mileage_params[:car_id]
    #   # render json: { error: { message: 'Invalid Parameters' } }, status: :unprocessable_entity
    # else
    # # Verify that the car ID exists
    #
    # @mileage = Mileage.new
    # # @mileage.user_id = mileage_params[:user_id]
    # @mileage.car_id = mileage_params[:car_id]
    # @mileage.purchase_date = mileage_params[:purchase_date]
    # @mileage.gallons_of_gas = mileage_params[:gallons_of_gas]
    # @mileage.trip_miles = mileage_params[:trip_miles]
    # @mileage.price_of_gas = mileage_params[:price_of_gas]
    #
    # if @mileage.save
    #   render json: @mileage, status: :created
    # else
    #   render json: @mileage.errors, status: :unprocessable_entity
    # end
    # end
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
    # Use callbacks to share common setup or constraints between actions.
    # def set_mileage
    #   @mileage = Mileage.find(params[:id])
    # end
    def set_mileage
      @mileage = current_user.mileages.find(params[:id])
    end


    # Only allow a trusted parameter "white list" through.
    def mileage_params
      params.require(:mileage).permit(:car_id, :purchase_date, :gallons_of_gas, :trip_miles, :price_of_gas)
    end
end
