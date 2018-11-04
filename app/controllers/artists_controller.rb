class ArtistsController < ApplicationController

  def new # Create
    @artist = Artist.new
  end

  def create # Create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist) # show page
  end

  def edit # Update
    @artist = Artist.find(params[:id])
  end

  def update # Update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to @artist
  end

  def show # Show
    # byebug
    @artist = Artist.find(params[:id])
  end

end
