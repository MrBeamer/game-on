class RentalsController < ApplicationController
  before_action :single_rental

  def new
    @rental = Rental.new
    authorize @rental
  end

  def create
    @rental = Rental.new(rental_params)
    authorize @rental
    @rental.user = current_user
    @rental.game = @game
    # @rental.game.availability = false
    @game.availability = false
    if @rental.save && @game.save
      redirect_to game_path(@game)
    else
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
