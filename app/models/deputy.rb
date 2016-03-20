class Deputy < ActiveRecord::Base
  belongs_to :fraction
  has_one :heading_fraction, foreign_key: :deputy_id, primary_key: :id, class_name: 'Fraction'
end
