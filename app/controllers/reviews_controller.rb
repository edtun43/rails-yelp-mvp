class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.restaurant_id = params[:restaurant_id]
    @review.save

    if @review.save
      redirect_to restaurant_path(params[:restaurant_id])
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
