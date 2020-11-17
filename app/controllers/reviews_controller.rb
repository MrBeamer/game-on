class ReviewsController < ApplicationController

    def new
      @review = Review.new
      authorize @review
  end

  def create
    @review = review.new(review_params)
    authorize @review
    @review.user = current_user
    @review.rental = @rental
    if @review.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

  def single_rental
    @rental = Rental.find(params[:rental_id])
  end

end
