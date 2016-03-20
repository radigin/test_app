class FractionVote < ActiveRecord::Base
  belongs_to :fraction
  belongs_to :vote
end
