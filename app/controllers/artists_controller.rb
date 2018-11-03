class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end
  def show
    @artist = Artist.find(params[:id])
  end
  def new
    @artist = Artist.new
  end
  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end
  def edit

  end
  def update

  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end
