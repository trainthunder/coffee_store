class CoffeesController < ApplicationController
  def index
    @coffees = Coffee.all
    # render json: @coffees
  end

  def menu
  end
end
