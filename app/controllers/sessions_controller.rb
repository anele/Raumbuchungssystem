class SessionsController < ApplicationController

  def create     
    @kunde = Kunde.find_by_email(params[:email])
    
    if @kunde && @kunde.authenticate(params[:password])     
      session[:kunde_id] = @kunde.id      
      redirect_to root_url,:flash => { :error => "Record not found." }
    else     
      flash.now.alert = "Invalid email or password"           
      render "new"    
    end
  end

  def destroy
    session[:kunde_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
  
  def show
    render :text =>"hier bin ich richtig"
  end

  
end
