class Fraction < ActiveRecord::Base
  belongs_to :deputy
  has_many :deputies
  has_many :laws
  has_many :fraction_votes
end
