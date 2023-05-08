class Movie < ApplicationRecord
  has_one :ranking, dependent: :destroy

  def total_score
    if ranking.present?
      sum = ranking.story +
      ranking.acting +
      ranking.dialog +
      ranking.cinematography +
      ranking.soundtrack +
      ranking.style +
      ranking.pacing +
      ranking.originality +
      ranking.characters +
      ranking.enjoyment
      return sum.to_f / 10
    else
      0
    end
  end
end
