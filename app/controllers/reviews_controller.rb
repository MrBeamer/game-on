class ReviewsController < ApplicationController
before_action :single_rental, except: [:index]


  def index
    @reviews = policy_scope(Review).order(created_at: :desc)
  end

    def new
      @review = Review.new
      authorize @review
  end

  def create
    @review = Review.new(review_params)
    authorize @review
    @review.user = current_user
    @review.rental = @rental
    # @review.game = @game
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
