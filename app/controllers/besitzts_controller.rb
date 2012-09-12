class BesitztsController < ApplicationController
  # GET /besitzts
  # GET /besitzts.json
  def index
    @besitzts = Besitzt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @besitzts }
    end
  end

  # GET /besitzts/1
  # GET /besitzts/1.json
  def show
    @besitzt = Besitzt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @besitzt }
    end
  end

  # GET /besitzts/new
  # GET /besitzts/new.json
  def new
    @besitzt = Besitzt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @besitzt }
    end
  end

  # GET /besitzts/1/edit
  def edit
    @besitzt = Besitzt.find(params[:id])
  end

  # POST /besitzts
  # POST /besitzts.json
  def create
    @besitzt = Besitzt.new(params[:besitzt])

    respond_to do |format|
      if @besitzt.save
        format.html { redirect_to @besitzt, notice: 'Besitzt was successfully created.' }
        format.json { render json: @besitzt, status: :created, location: @besitzt }
      else
        format.html { render action: "new" }
        format.json { render json: @besitzt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /besitzts/1
  # PUT /besitzts/1.json
  def update
    @besitzt = Besitzt.find(params[:id])

    respond_to do |format|
      if @besitzt.update_attributes(params[:besitzt])
        format.html { redirect_to @besitzt, notice: 'Besitzt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @besitzt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /besitzts/1
  # DELETE /besitzts/1.json
  def destroy
    @besitzt = Besitzt.find(params[:id])
    @besitzt.destroy

    respond_to do |format|
      format.html { redirect_to besitzts_url }
      format.json { head :no_content }
    end
  end
end
