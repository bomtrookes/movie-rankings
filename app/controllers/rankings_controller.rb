class RankingsController < ApplicationController

  def index
    @rankings = Ranking.all
  end

  def new
    @movie = Movie.find(params[:movie_id])
    @ranking = Ranking.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @ranking = Ranking.new(ranking_params)
    if @ranking.save
      @movie.update!(rating: @movie.total_score)
      redirect_to movies_path
    else
      render :new
    end
  end

  private

  def ranking_params
    params.require(:ranking).permit(:story, :acting, :dialog, :cinematography, :soundtrack, :style, :pacing, :originality, :characters, :enjoyment, :movie_id)
  end

end
