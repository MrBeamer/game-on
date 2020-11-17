class RentalsController < ApplicationController
  before_action :single_rental, except: [:index]

  def index
    @rental = Rental.last
  end

  def new
    @rental = Rental.new
    authorize @rental
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.game = @game
    authorize @game
    authorize @rental
    # @rental.game.availability = false
    @game.availability = false
    if @rental.save && @game.save
      redirect_to game_path(@game)
    else
      raise
      render :new
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, game_attributes: [:availability])
  end

  def single_rental
    @game = Game.find(params[:game_id])
  end
end
