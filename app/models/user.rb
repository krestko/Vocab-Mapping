class User < ApplicationRecord
  validates :user_name, presence: true
  has_many :routes
  has_many :coordinates, :through => :routes
end
