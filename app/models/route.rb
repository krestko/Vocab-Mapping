class Route < ApplicationRecord
  validates :route_name, presence: true
  belongs_to :user
  has_many :coordinates
end
