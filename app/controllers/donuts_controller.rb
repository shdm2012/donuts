class DonutsController < ApplicationController
  before_action :current_donut, only: [:show, :edit, :update, :destroy]

  def index
    @donuts = Donut.all
  end

  def show
    #@donut = Donut.find(params[:id])
  end

  def new
    @donut = Donut.new
  end

  def create
    donut = Donut.create(donut_params)

    redirect_to donut_path(donut)
  end

  def edit
    #@donut = Donut.find(params[:id])
  end

  def update
    @donut.update(donut_params)

    redirect_to donut_path(@donut)
  end

  def destroy
    @donut.destroy

    redirect_to donuts_path
  end

  private

  def donut_params
    params.require(:donut).permit(:name, :weight)
  end

  def current_donut
    @donut = Donut.find(params[:id])
  end

end
