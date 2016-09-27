class GamesController < ApplicationController
  def index
    @games = Game.all

  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.create(character: params[:character], house: params[:house], city: params[:city])
    render 'show.json.jbuilder'
  end

  def update
    @game = Game.find(params[:id])
    
    @game.character = params[:character] if params[:character]
    @game.house = params[:house] if params[:house]
    @game.city = params[:city] if params[:city]
    
    @game.save

    render 'show.json.jbuilder'
  end

  def destroy
    @game = Game.find(params[:id])
    @game = Game.destroy
  end 

end
