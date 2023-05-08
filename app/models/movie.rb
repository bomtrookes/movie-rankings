class Movie < ApplicationRecord
  has_one :ranking, dependent: :destroy

  def total_score
    if ranking.present?
      ranking.story +
      ranking.acting +
      ranking.dialog +
      ranking.cinematography +
      ranking.soundtrack +
      ranking.style +
      ranking.pacing +
      ranking.originality +
      ranking.characters +
      ranking.enjoyment
    else
      0
    end
  end
end
