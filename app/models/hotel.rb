class Hotel < ApplicationRecord
	has_many :rooms
	validates :name, :state, :city, presence: true
end
