class WeeksController < ApplicationController
  before_action :set_week, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @weeks = Week.all.page(params[:page]).per_page(1)
    @comments = Comment.all
    respond_with(@weeks)
  end

  def show
    respond_with(@week)
  end

  def new
    @week = Week.new
    respond_with(@week)
  end

  def edit
  end

  def create
    @week = Week.new(week_params)
    flash[:notice] = 'Week was successfully created.' if @week.save
    respond_with(@week)
  end

  def update
    flash[:notice] = 'Week was successfully updated.' if @week.update(week_params)
    respond_with(@week)
  end

  def destroy
    @week.destroy
    respond_with(@week)
  end

  private
    def set_week
      @week = Week.find(params[:id])
    end

    def week_params
      params.require(:week).permit(:week_number, :class_id, :wine_id)
    end
end
