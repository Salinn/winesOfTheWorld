class WineClassesController < ApplicationController
  before_action :set_wine_class, only: [:show, :edit, :update, :destroy]

  def index
    @wine_classes = WineClass.all
    respond_with(@wine_classes)
  end

  def show
    respond_with(@wine_class)
  end

  def new
    @wine_class = WineClass.new
    respond_with(@wine_class)
  end

  def edit
  end

  def create
    @wine_class = WineClass.new(wine_class_params)
    flash[:notice] = 'WineClass was successfully created.' if @wine_class.save
    respond_with(@wine_class)
  end

  def update
    flash[:notice] = 'WineClass was successfully updated.' if @wine_class.update(wine_class_params)
    respond_with(@wine_class)
  end

  def destroy
    @wine_class.destroy
    respond_with(@wine_class)
  end

  private
    def set_wine_class
      @wine_class = WineClass.find(params[:id])
    end

    def wine_class_params
      params.require(:wine_class).permit(:name, :meeting_time)
    end
end
