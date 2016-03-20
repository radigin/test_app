class Law < ActiveRecord::Base
  belongs_to :fraction
  has_many :votes
end
