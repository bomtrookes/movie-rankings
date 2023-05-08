class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
    @ranking = @movie.build_ranking
  end

  def create_table
    @movie = Movie.new(movie_params)
    redirect_to new_ranking_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, :genre)
  end
end
