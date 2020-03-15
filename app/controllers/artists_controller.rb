class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new 
  end

  def create 
    # byebug
    artist = Artist.create!(artist_param(:name, :bio))
    redirect_to artist_path(artist)
  end

  def edit 
    @artist = Artist.find(params[:id])
  end

  def update 
    # byebug
    artist = Artist.find(params[:id])
    artist.update(artist_param(:bio))
    redirect_to artist_path(artist)
  end

  private 

  def artist_param(*args)
    params.require(:artist).permit(*args)
  end
end
