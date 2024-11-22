class ToiletsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @toilets = Toilet.nearby_locations(params[:query])
    else
      @toilets = Toilet.where.not(user: current_user)
    end
    if @toilets.present?
      @markers = @toilets.geocoded.map do |toilet|
        {
          lat: toilet.latitude,
          lng: toilet.longitude,
          info_window_html: render_to_string(partial: "info_window", locals: {toilet: toilet})
        }
      end
    end
  end

  def show
    @toilet = Toilet.find(params[:id])
    @booking = Booking.new
    @review = Review.new
    @reviews = @toilet.reviews.all
    @markers = [
      {
        lat: @toilet.latitude,
        lng: @toilet.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {toilet: @toilet}),
        marker_html: render_to_string(partial: "marker")
      }
    ]
  end

  def new
    @toilet = Toilet.new
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.user = current_use
    if @toilet.save
      redirect_to toilet_path(@toilet)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def toilet_params
    params.require(:toilet).permit(:name, :price, :address, :description, photos: [])
  end
end
