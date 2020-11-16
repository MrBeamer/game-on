class GamesController < ApplicationController
  before_action :single_game, only: [:show, :edit, :update, :destroy]
  
  def index
    @games = Game.all
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      redirect_to @game
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @game.update(game_params)
      redirect_to @game
    else
      render :edit
    end
  end

  def destroy
    @game.destroy
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :price_per_day, :category, :condition, :availability)
  end
  
  def single_game
    @game = Game.find(params[:id])
  end

end
