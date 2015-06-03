class MoviesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @movie = Movie.all
  end

  def new
    @movie = current_user.movies.build
  end

  def create
    @movie = current_user.movies.build(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render "new"
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def update
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :description, :length, :director,:rating)
  end
end
