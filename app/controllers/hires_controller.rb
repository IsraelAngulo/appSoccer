class HiresController < ApplicationController
  # GET /hires
  # GET /hires.json
  def index
    @hires = Hire.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hires }
    end
  end

  # GET /hires/1
  # GET /hires/1.json
  def show
    @hire = Hire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hire }
    end
  end

  # GET /hires/new
  # GET /hires/new.json
  def new
    @hire = Hire.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hire }
    end
  end

  # GET /hires/1/edit
  def edit
    @hire = Hire.find(params[:id])
  end

  # POST /hires
  # POST /hires.json
  def create
    @hire = Hire.new(params[:hire])

    respond_to do |format|
      if @hire.save
        format.html { redirect_to @hire, notice: 'Hire was successfully created.' }
        format.json { render json: @hire, status: :created, location: @hire }
      else
        format.html { render action: "new" }
        format.json { render json: @hire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hires/1
  # PUT /hires/1.json
  def update
    @hire = Hire.find(params[:id])

    respond_to do |format|
      if @hire.update_attributes(params[:hire])
        format.html { redirect_to @hire, notice: 'Hire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hires/1
  # DELETE /hires/1.json
  def destroy
    @hire = Hire.find(params[:id])
    @hire.destroy

    respond_to do |format|
      format.html { redirect_to hires_url }
      format.json { head :no_content }
    end
  end
end
