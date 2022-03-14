class PlantsController < ApplicationController
  
  def index
    plant = Plant.all
    render json: plant.as_json
  end

  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant.as_json
  end

  def create
    plant = Plant.new(
      name: params[:name],
      plant_type: params[:plant_type],
      image: params[:image],
      description: params[:description]
    )
    plant.save
    render json: plant.as_json
  end

  def update
    plant = Plant.find_by(id: params[:id])
    plant.name = params[:name] || plant.name
    plant.plant_type = params[:plant_type] || plant.plant_type
    plant.image = params[:image] || plant.image
    plant.description = params[:description] || plant.description

    plant.save
    render json: plant.as_json
  end

  def destroy
    plant = Plant.find_by(id: params[:id])
    plant.destroy
    render json: plant.as_json
  end

end
