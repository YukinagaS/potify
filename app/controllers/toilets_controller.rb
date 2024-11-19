class ToiletsController < ApplicationController
  def index
    @toilets = Toilet.all
  end

  private

  def toilet_params
    params.require(:toilet).permit(:name, :price, :address, :description, :photo)
  end
end
