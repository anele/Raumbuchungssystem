class SessionsController < ApplicationController

  def create     
    @kunde = Kunde.find_by_email(params[:email])
    
    if @kunde && @kunde.authenticate(params[:password])     
      session[:kunde_id] = @kunde.id      
      flash[:notice] = "Sie haben sich erfolgreich angemeldet!"  
      redirect_to root_url
    else     
       flash[:notice] = "Email/Passwort passen nicht ueberein oder Sie sind noch nicht registriert!"        
       render action: "new"   
    end
  end

  def destroy
    session[:kunde_id] = nil
    redirect_to root_url, :notice => "Sie haben sich ausgeloggt. Bis zum naechsten Mal!"
  end
  
  def show

  end

  
end
