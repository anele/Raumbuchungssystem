class StaticController < ApplicationController
  def index
   
  end

  def contact
  end
  
  def home
    
  end
    
  def test
  
  end
  
  def select
    @auswahl = params[:text]
    render :text => @auswahl
   
  end

end
