class MoviesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def search
    if params[:search].present?
      @movies = Movie.search(params[:search])
    else
      @movies = Movie.all
    end
  end

  def index
    @movies = Movie.all
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
    @reviews = Review.where(movie_id: @movie.id)

    if @reviews.any?
      @avg_reviews = @reviews.average(:rating).round(2)
    else
      @avg_reviews = 0
    end
  end

  def update
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :description, :length, :director, :rating, :image)
  end
end
