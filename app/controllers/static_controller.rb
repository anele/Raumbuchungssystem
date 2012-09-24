class StaticController < ApplicationController
  def index
  end

  def contact
  end
  
  def home
    
    @raum = Raum.find_by_id(:city_id)
  end

end
