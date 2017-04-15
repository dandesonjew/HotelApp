class Room < ApplicationRecord
  belongs_to :hotel
  belongs_to :room_type
  validates :room_type,:hotel,:price, presence: true
end
