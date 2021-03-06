class FlatsController < ApplicationController
  before_action :set_flat, only: [:show]

  def index
    @flats = Flat.all
  end

  def show; end

  def new
    @flat = Flat.new
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def restaurant_params
    params.require(:flat).permit(:name, :address, :)
  end
end
