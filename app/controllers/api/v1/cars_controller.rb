class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def show
    @car = Car.find_by(id: params[:id])
    if @car
      render json: @car, status: :ok
    else
      render json: { error: 'Car not found' }, status: :not_found
    end
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      render json: @car, status: :created
    else
      render json: { error: 'Failed to create car data' }, status: :unprocessable_entity
    end
  end

  def update
    if @car.update(car_params)
      render json: @car, status: :updated, location: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.update(is_removed: true)
    if @car.destroy
      render json: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  private

  def car_params
    params.require(:car).permit(:name, :image, :color, :year, :finance_fee, :total_amount_payable,
                                :description, :duration, :option_to_purchase, :is_removed)
  end
end
