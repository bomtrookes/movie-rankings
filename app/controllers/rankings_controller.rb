class RankingsController < ApplicationController

  def index
    @rankings = Ranking.all
  end

  def new
    @ranking = Ranking.new
  end

  def create
    @ranking = Ranking.new(ranking_params)
    @ranking.save
    redirect_to movies_path
  end

  private

  def ranking_params
    params.require(:ranking).permit(:story, :acting, :dialog, :cinematography, :soundtrack, :style, :pacing, :originality, :characters, :enjoyment, :movie_id)
  end

end
