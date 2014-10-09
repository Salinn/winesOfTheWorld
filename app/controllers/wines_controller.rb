class WinesController < ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy]

  def index
    @wines = Wine.all
  end

  def show
  end

  def new
    @wine = Wine.new
  end

  def edit
  end

  def create
    @wine = Wine.new(wine_params)
    flash[:notice] = 'Wine was successfully created.' if @wine.save
  end

  def update
    flash[:notice] = 'Wine was successfully updated.' if @wine.update(wine_params)
  end

  def destroy
    @wine.destroy
  end

  private
    def set_wine
      @wine = Wine.find(params[:id])
    end

    def wine_params
      params.require(:wine).permit(:producer, :grape, :country, :region, :vintage, :price, :alcohol_percentage)
    end
end
