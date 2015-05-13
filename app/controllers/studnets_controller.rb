class StudnetsController < ApplicationController
  # GET /studnets
  # GET /studnets.json
  def index
    @studnets = Studnet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @studnets }
    end
  end

  # GET /studnets/1
  # GET /studnets/1.json
  def show
    @studnet = Studnet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @studnet }
    end
  end

  # GET /studnets/new
  # GET /studnets/new.json
  def new
    @studnet = Studnet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @studnet }
    end
  end

  # GET /studnets/1/edit
  def edit
    @studnet = Studnet.find(params[:id])
  end

  # POST /studnets
  # POST /studnets.json
  def create
    @studnet = Studnet.new(params[:studnet])

    respond_to do |format|
      if @studnet.save
        format.html { redirect_to @studnet, notice: 'Studnet was successfully created.' }
        format.json { render json: @studnet, status: :created, location: @studnet }
      else
        format.html { render action: "new" }
        format.json { render json: @studnet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /studnets/1
  # PUT /studnets/1.json
  def update
    @studnet = Studnet.find(params[:id])

    respond_to do |format|
      if @studnet.update_attributes(params[:studnet])
        format.html { redirect_to @studnet, notice: 'Studnet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @studnet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studnets/1
  # DELETE /studnets/1.json
  def destroy
    @studnet = Studnet.find(params[:id])
    @studnet.destroy

    respond_to do |format|
      format.html { redirect_to studnets_url }
      format.json { head :no_content }
    end
  end
end
