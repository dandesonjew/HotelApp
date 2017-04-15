class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :patron
  validates: :patron, :room, :start_date, :end_date, presence: true
end
