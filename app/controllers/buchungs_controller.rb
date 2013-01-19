class BuchungsController < ApplicationController
  # GET /buchungs/l2_anfrage
   # GET /buchungs/l2_anfrage.json
   def l2_anfrage
     @buchung = Buchung.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @buchung }
    end
   end
  # GET /buchungs
  # GET /buchungs.json
  def index
    if session[:kunde_id] == nil
      @buchungs = Buchung.all
    else
      @buchungs = Buchung.find(:all, :conditions => ['kunde_id = ?',session[:kunde_id]], :order =>"anfangszeit ASC")      
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @buchungs }
    end
  end

  # GET /buchungs/1
  # GET /buchungs/1.json
  def show
    @buchung = Buchung.find(params[:id])
   
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @buchung }
    end
  end

  # GET /buchungs/new
  # GET /buchungs/new.json
  def new    
    @buchung = Buchung.new
 
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @buchung }
    end
  end

  # GET /buchungs/1/edit
  def edit    
    @buchung = Buchung.find(params[:id])
  end

  # POST /buchungs
  # POST /buchungs.json
  def create
  
   
   respond_to do |format|      
        @buchung = Buchung.new(params[:buchung])      
        if @buchung.save              
          if @buchung.status=="B"
            format.html { redirect_to @buchung, notice: 'Buchung war erfolgreich.' }
          else
            format.html { redirect_to @buchung, notice: 'Reservierung war erfolgreich.' }
          end
          format.json { render json: @buchung, status: :created, location: @buchung }
        else        
          format.html { render action: "new" }
          format.json { render json: @buchung.errors, status: :unprocessable_entity }
        end             
   end     
  end

  # PUT /buchungs/1
  # PUT /buchungs/1.json
  def update
    @buchung = Buchung.find(params[:id])
    
    respond_to do |format|
      if @buchung.update_attributes(params[:buchung])
        format.html { redirect_to @buchung, notice: 'Buchung was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @buchung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buchungs/1
  # DELETE /buchungs/1.json
  def destroy    
    @buchung = Buchung.find(params[:id])
    @buchung.destroy

    respond_to do |format|
      format.html { redirect_to buchungs_url }
      format.json { head :no_content }
    end
  end
  
   # PUT /buchungs/1
  # PUT /buchungs/1.json
  def restobooking
    @buchung = Buchung.find(params[:id])
    @buchung.status='B'  
    
    respond_to do |format|
      if @buchung.update_attributes(params[:buchung])
        format.html { redirect_to @buchung, notice: 'Buchung was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @buchung.errors, status: :unprocessable_entity }
      end
    end  
  end
  
  
  
end
