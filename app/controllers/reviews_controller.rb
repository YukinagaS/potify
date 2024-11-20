class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @toilet = Toilet.find(params[:toilet_id])
    @review.toilet = @toilet
    @review.user = current_user
    if @review.save
      redirect_to toilet_path(@toilet)
    else
      render 'toilets/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
