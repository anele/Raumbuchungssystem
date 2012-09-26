class RaumsController < ApplicationController
   # GET raums/search
 def search()
   
   @date = Buchung.find_by_sql("Select anfangszeit,endzeit from buchungs,raums where buchungs.raum_id = raums.id")   

 end
  
  # GET /raums
  # GET /raums.json
  def index
    @rau = Raum.search(params[:raum])   
    @ausst = Ausstattung.find_by_sql("Select id,bezeichnung from ausstattungs" )
    

                
    if params[:id] && !params[:id].empty
   @raum = Raum.find_by_id(:raum_id)  
   @raum.update_attributes(params[:raum_id])
   end
   # if params[:id] && !params[:id].empty
   #   @raum = Raum.find(params[:id])
    #  @raum.update_attributes(params[:raum])
    #elsif
    #if params[:r_idx] && !session[:r_idx].empty
    #if params[:r_idx]
    #  @raums= Raum.find(:all,:conditions=>["id LIKE ?","%#{params[:r_idx]}%"])
    #  if @raums.size.zero?
    #    @raums = Raum.find(:all)
    #  end
      #@raum = Raum.find_by_id(session[:r_idx])
    #else
    #  @raum = Raum.find(:first)
   # else
      @raums = Raum.find(:all)  
   # end
      
    #end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @raums }
    end
  end

  # GET /raums/1
  # GET /raums/1.json
  def show
    @raum = Raum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @raum }
    end
  end

  # GET /raums/new
  # GET /raums/new.json
  def new
    @raum = Raum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @raum }
    end
  end

  # GET /raums/1/edit
  def edit
    @raum = Raum.find(params[:id])
  end

  # POST /raums
  # POST /raums.json
  def create
    @raum = Raum.new(params[:raum])

    respond_to do |format|
      if @raum.save
        format.html { redirect_to @raum, notice: 'Raum was successfully created.' }
        format.json { render json: @raum, status: :created, location: @raum }
      else
        format.html { render action: "new" }
        format.json { render json: @raum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /raums/1
  # PUT /raums/1.json
  def update
    @raum = Raum.find(params[:id])

    respond_to do |format|
      if @raum.update_attributes(params[:raum])
        format.html { redirect_to @raum, notice: 'Raum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @raum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raums/1
  # DELETE /raums/1.json
  def destroy
    @raum = Raum.find(params[:id])
    @raum.destroy

    respond_to do |format|
      format.html { redirect_to raums_url }
      format.json { head :no_content }
    end
  end 
end
