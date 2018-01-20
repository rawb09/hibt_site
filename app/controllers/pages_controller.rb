class PagesController  < ApplicationController

  def about_us
  end

  def contact_us
  end


  def beach
      @beach_places = Place.where(category_id: 1)
  end

  def all
    @places = Place.all
  end

  def users
    @users = User.all
  end

end
