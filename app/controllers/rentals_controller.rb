class RentalsController < ApplicationController
  before_action :single_rental, except: [:index, :show]

  def index
    @rentals = policy_scope(Rental).where(user: current_user).order(created_at: :desc)
    @user = current_user
  end

  def show
    @rental = Rental.find(params[:id])
    authorize @rental
    @game = @rental.game
    @user = @rental.user
  
    @days_total = @rental.end_date - @rental.start_date
    @days_total = @days_total.inspect.split("/")
    @days_total = @days_total[0]
    @days_total.slice! "("
    
    @marker = [ { 
      lat: @user.latitude,
      lng: @user.longitude
      } ]
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
    @game.availability = false
    if @rental.save && @game.save
      redirect_to rental_path(@rental)
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
