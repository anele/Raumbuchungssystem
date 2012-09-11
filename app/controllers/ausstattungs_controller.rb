class AusstattungsController < ApplicationController
  # GET /ausstattungs
  # GET /ausstattungs.json
  def index
    @ausstattungs = Ausstattung.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ausstattungs }
    end
  end

  # GET /ausstattungs/1
  # GET /ausstattungs/1.json
  def show
    @ausstattung = Ausstattung.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ausstattung }
    end
  end

  # GET /ausstattungs/new
  # GET /ausstattungs/new.json
  def new
    @ausstattung = Ausstattung.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ausstattung }
    end
  end

  # GET /ausstattungs/1/edit
  def edit
    @ausstattung = Ausstattung.find(params[:id])
  end

  # POST /ausstattungs
  # POST /ausstattungs.json
  def create
    @ausstattung = Ausstattung.new(params[:ausstattung])

    respond_to do |format|
      if @ausstattung.save
        format.html { redirect_to @ausstattung, notice: 'Ausstattung was successfully created.' }
        format.json { render json: @ausstattung, status: :created, location: @ausstattung }
      else
        format.html { render action: "new" }
        format.json { render json: @ausstattung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ausstattungs/1
  # PUT /ausstattungs/1.json
  def update
    @ausstattung = Ausstattung.find(params[:id])

    respond_to do |format|
      if @ausstattung.update_attributes(params[:ausstattung])
        format.html { redirect_to @ausstattung, notice: 'Ausstattung was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ausstattung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ausstattungs/1
  # DELETE /ausstattungs/1.json
  def destroy
    @ausstattung = Ausstattung.find(params[:id])
    @ausstattung.destroy

    respond_to do |format|
      format.html { redirect_to ausstattungs_url }
      format.json { head :no_content }
    end
  end
end
