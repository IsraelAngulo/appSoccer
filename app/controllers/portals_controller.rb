class PortalsController < ApplicationController
  # GET /portals
  # GET /portals.json
  def index
    @portals = Portal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @portals }
    end
  end

  # GET /portals/1
  # GET /portals/1.json
  def show
    @portal = Portal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @portal }
    end
  end

  # GET /portals/new
  # GET /portals/new.json
  def new
    @portal = Portal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @portal }
    end
  end

  # GET /portals/1/edit
  def edit
    @portal = Portal.find(params[:id])
  end

  # POST /portals
  # POST /portals.json
  def create
    @portal = Portal.new(params[:portal])

    respond_to do |format|
      if @portal.save
        format.html { redirect_to @portal, notice: 'Portal was successfully created.' }
        format.json { render json: @portal, status: :created, location: @portal }
      else
        format.html { render action: "new" }
        format.json { render json: @portal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /portals/1
  # PUT /portals/1.json
  def update
    @portal = Portal.find(params[:id])

    respond_to do |format|
      if @portal.update_attributes(params[:portal])
        format.html { redirect_to @portal, notice: 'Portal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @portal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portals/1
  # DELETE /portals/1.json
  def destroy
    @portal = Portal.find(params[:id])
    @portal.destroy

    respond_to do |format|
      format.html { redirect_to portals_url }
      format.json { head :no_content }
    end
  end
end
