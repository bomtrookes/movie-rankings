class Chart < ApplicationRecord
  belongs_to :movie
  belongs_to :ranking
end
