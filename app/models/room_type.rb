class RoomType < ApplicationRecord
	has_many :rooms
	validates :name, :max_people, :description, presence: true
end
