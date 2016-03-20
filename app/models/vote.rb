class Vote < ActiveRecord::Base
  belongs_to :law
  has_many :fraction_votes
end
