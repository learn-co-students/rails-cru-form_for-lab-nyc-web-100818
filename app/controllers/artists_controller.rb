require 'byebug'
class ArtistsController < ApplicationController
  before_action :find_artist, only: [:edit, :update, :show]

  def index
    @artists = Artist.all
    render :index
  end

  def new
    @artist = Artist.new
    # byebug
  end

  def create
    # byebug
    @artist = Artist.create(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def update
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def edit

  end

  def show
    @artist = find_artist
  end



  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end


end
