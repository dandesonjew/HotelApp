class HotelsController < ApplicationController

def index
	@hotels = Hotel.all()
end

def show
	@hotel = Hotel.find(params[:id])
end

def new
	@hotel = Hotel.new()
end

def create
	@hotel = Hotel.new(hotel_params)
	@hotel.save
	redirect_to @hotel
end
def hotel_params
	 params.require(:hotel).permit(:name, :state)
end
end