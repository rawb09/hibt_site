class PlacesController < ApplicationController
before_action :authenticate_user!, only: [:create, :new]
before_action :is_admin?, only: [:edit, :update, :destroy]


def search
@places = Place.search(params)
end
# def search
#   @search = Place.search do
#     fulltext params[:search]
#   end
#   @places = @search.results
# end


def index
#   to allow location based off ip
# visitor_latitude = request.location.latitude
# visitor_longitude = request.location.longitude
# @places = Place.near([visitor_latitude, visitor_longitude], 20)
# @beach_places = Place.where(category_id: 2).near([visitor_latitude, visitor_longitude], 20)


  @places = Place.all
  @beach_places = Place.where(category_id: 1)
  @trail_places = Place.where(category_id: 7)
  @park_places = Place.where(category_id: 6)
  @waterfall_places = Place.where(category_id: 8)

end

def new
  @place = Place.new
end

def create
  @place = Place.new(place_params)
if  @place.save
  redirect_to @place
else
  flash[:danger] = @place.errors.full_messages.to_sentence
  render 'new'
end
end

def edit
  @place = Place.find(params[:id])
end

def update
  @place = Place.find(params[:id])
  @place.update(place_params)
  redirect_to @place
end

def destroy
  @place = Place.find(params[:id])
  @place.destroy
  redirect_to root_path

end



def show
   @place = Place.find(params[:id])
   @reviews = Review.where(place_id: @place)
   if @reviews.blank?
     @avg_rating = 0
   else
     @avg_rating = @reviews.average(:rating)
   end
end

private
def place_params
  params.require(:place).permit(:name, :description, :address, :category_id, :city, :state, :zipcode, :phone, :email, :image)
end

def is_admin?
  if !current_user.try(:admin?)
    flash[:danger] = "You are not authorized to edit or delete."
    redirect_to root_path
  end
end

end
