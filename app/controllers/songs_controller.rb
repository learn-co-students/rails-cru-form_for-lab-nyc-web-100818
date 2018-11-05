
class SongsController < ApplicationController
  before_action :find_song, only: [:edit, :show, :update]

  def index
    @songs = Song.all
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def new
    @song = Song.new
  end

  def show
    @song = find_song
    @genre = @song.genre.name
  end

  def edit
    @song = find_song
  end


  def update
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
