class KundesController < ApplicationController
  # GET /kundes
  # GET /kundes.json
  def index
    @kundes = Kunde.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kundes }
    end
  end

  # GET /kundes/1
  # GET /kundes/1.json
  def show
    @kunde = Kunde.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kunde }
    end
  end

  # GET /kundes/new
  # GET /kundes/new.json
  def new
    @kunde = Kunde.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kunde }
    end
  end

  # GET /kundes/1/edit
  def edit
    @kunde = Kunde.find(params[:id])
  end

  # POST /kundes
  # POST /kundes.json
  def create
    @kunde = Kunde.new(params[:kunde])

    respond_to do |format|
      if @kunde.save
        format.html { redirect_to @kunde, notice: 'Kunde was successfully created.' }
        format.json { render json: @kunde, status: :created, location: @kunde }
      else
        format.html { render action: "new" }
        format.json { render json: @kunde.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kundes/1
  # PUT /kundes/1.json
  def update
    @kunde = Kunde.find(params[:id])

    respond_to do |format|
      if @kunde.update_attributes(params[:kunde])
        format.html { redirect_to @kunde, notice: 'Kunde was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kunde.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kundes/1
  # DELETE /kundes/1.json
  def destroy
    @kunde = Kunde.find(params[:id])
    @kunde.destroy

    respond_to do |format|
      format.html { redirect_to kundes_url }
      format.json { head :no_content }
    end
  end
end
