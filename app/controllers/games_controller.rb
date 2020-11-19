class GamesController < ApplicationController
  before_action :single_game, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :home, :show]

  def index
    # @games = Game.all
    @games = policy_scope(Game).order(created_at: :desc)
  end

  def show
    authorize @game
    @user = @game.user
    @marker = [ { 
      lat: @user.latitude,
      lng: @user.longitude
      } ]
  end

  def new
    @game = Game.new
    authorize @game
  end

  def create
    @game = Game.new(game_params)
    authorize @game
    @game.user = current_user
    if @game.save!
      redirect_to @game
    else
      render :new
    end
  end

  def edit
  end

  def update
    authorize @game
    if @game.update(game_params)
      redirect_to @game
    else
      render :edit
    end
  end

  def destroy
    authorize @game
    @game.destroy
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :price_per_day, :category, :condition, :availability, :photo)
  end

  def single_game
    @game = Game.find(params[:id])
  end

end
