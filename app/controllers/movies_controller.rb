class MoviesController < ApplicationController
  def index
    @movies = Movie.order(rating: :desc)
  end

  def new
    @movie = Movie.new
    @ranking = @movie.build_ranking
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to new_movie_ranking_path(@movie)
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, :genre, :rating)
  end
end
