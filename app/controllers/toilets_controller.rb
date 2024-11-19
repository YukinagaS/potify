class ToiletsController < ApplicationController
  skip_before_action :authenticate_user!, except: :index
  def index
    @toilets = Toilet.all
  end

  def show
    @toilet = Toilet.find(params[:id])
  end

  def new
    @toilet = Toilet.new
  end

  def create
    @toilet = Toilet.new(toilet_params)
    if @toilet.save
      redirect_to toilet_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def toilet_params
    params.require(:toilet).permit(:name, :price, :address, :description, :photo)
  end
end
