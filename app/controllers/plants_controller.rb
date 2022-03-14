class PlantsController < ApplicationController
  
  def index
    plant = Plant.all
    render json: plant.as_json
  end

  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant.as_json
  end

  
  
end
