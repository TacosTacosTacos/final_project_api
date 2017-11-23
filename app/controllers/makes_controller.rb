# frozen_string_literal: true

class MakesController < OpenReadController
  # GET /makes
  # GET /makes.json
  def index
    @makes = Make.all.order('make_name')

    render json: @makes
  end

  # GET /makes/1
  # GET /makes/1.json
  def show
    render json: Make.find(params[:id])
  end

  def make_params
    params.require(:make).permit(:text)
  end

  private :make_params
end
