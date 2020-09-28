class Rating < ApplicationRecord
  belongs_to :appointment

  validates :rating, numericality: { only_integer: true, greater_than: 0, less_than: 11 }, presence: true
end
