class Coordinate < ApplicationRecord
  validates :coordinate_number, presence: true
  validates :english_word, presence: true
  validates :foreign_word, presence: true
  belongs_to :route
end
