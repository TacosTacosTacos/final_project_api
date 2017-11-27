class ServicesController < ProtectedController
  before_action :set_service, only: [:show, :update, :destroy]

  # GET /services
  def index
    @services = current_user.services.order('service_date')

    render json: @services
  end

  def show
    render json: current_user.services.find(params[:id])
  end

  # POST /services
  def create
    @car = current_user.cars.find(service_params[:car_id])

    if (@car.id)
      @service = current_user.services.build(service_params)

      if @service.save
        render json: @service, status: :created
      else
        render json: @service.errors, status: :unprocessable_entity
      end
    else
      render json: { error: { message: 'Invalid Parameters' } }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /services/1
  def update
    @car = current_user.cars.find(service_params[:car_id])

    if @car.id.to_s == service_params[:car_id].to_s

      if @service.update(service_params)
        render json: @service
      else
        render json: @service.errors, status: :unprocessable_entity
      end
    else
      render json: { error: { message: 'Invalid Parameters' } }, status: :unprocessable_entity
    end
  end

  # DELETE /services/1
  def destroy
    @service.destroy
  end

  private
    def set_service
      @service = current_user.services.find(params[:id])
    end


    # Only allow a trusted parameter "white list" through.
    def service_params
      params.require(:service).permit(:car_id, :service_type_id,
                                      :service_date, :current_mileage, :notes)
    end
end
