class RentalsController < ApplicationController
  before_action :single_rental

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.game = @game
    if @rental.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  private 

  def rental_params 
    params.require(:rental).permit(:start_date, :end_date)
  end

  def single_rental
    @game = Game.find(params[:game_id])
  end

end
