class WinesController < ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @wines = Wine.all
    respond_with(@wines)
  end

  def show
    respond_with(@wines)
  end

  def new
    @wine = Wine.new
    respond_with(@wines)
  end

  def edit
  end

  def create
    @wine = Wine.new(wine_params)
    flash[:notice] = 'Wine was successfully created.' if @wine.save
    respond_with(@wine)
  end

  def update
    flash[:notice] = 'Wine was successfully updated.' if @wine.update(wine_params)
    respond_with(@wine)
  end

  def destroy
    @wine.destroy
    respond_with(@wines)
  end

  private
    def set_wine
      @wine = Wine.find(params[:id])
    end

    def wine_params
      params.require(:wine).permit(:producer, :grape, :country, :region, :vintage, :price, :alcohol_percentage, :week_id)
    end
end
