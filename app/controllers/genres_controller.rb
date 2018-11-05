require 'byebug'
class GenresController < ApplicationController
  before_action :find_genre, only: [:edit, :update, :show]

  def index
    @genres = Genre.all
    render :index
  end

  def new
    @genre = Genre.new
  end

  def create
    # byebug
    @genre = Genre.create(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def edit
  end

  def update
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def show

    @genre = find_genre
  end



  private

  def find_genre
    @genre = Genre.find_by(id: params[:id])
  end

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end



end
