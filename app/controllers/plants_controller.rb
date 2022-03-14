class PlantsController < ApplicationController
  
  def index
    plant = Plant.all
    render json: plant.as_json
  end

end
