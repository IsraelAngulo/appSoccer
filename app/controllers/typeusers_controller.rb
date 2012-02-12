class TypeusersController < ApplicationController
  # GET /typeusers
  # GET /typeusers.json
  def index
    @typeusers = Typeuser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @typeusers }
    end
  end

  # GET /typeusers/1
  # GET /typeusers/1.json
  def show
    @typeuser = Typeuser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @typeuser }
    end
  end

  # GET /typeusers/new
  # GET /typeusers/new.json
  def new
    @typeuser = Typeuser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @typeuser }
    end
  end

  # GET /typeusers/1/edit
  def edit
    @typeuser = Typeuser.find(params[:id])
  end

  # POST /typeusers
  # POST /typeusers.json
  def create
    @typeuser = Typeuser.new(params[:typeuser])

    respond_to do |format|
      if @typeuser.save
        format.html { redirect_to @typeuser, notice: 'Typeuser was successfully created.' }
        format.json { render json: @typeuser, status: :created, location: @typeuser }
      else
        format.html { render action: "new" }
        format.json { render json: @typeuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /typeusers/1
  # PUT /typeusers/1.json
  def update
    @typeuser = Typeuser.find(params[:id])

    respond_to do |format|
      if @typeuser.update_attributes(params[:typeuser])
        format.html { redirect_to @typeuser, notice: 'Typeuser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @typeuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typeusers/1
  # DELETE /typeusers/1.json
  def destroy
    @typeuser = Typeuser.find(params[:id])
    @typeuser.destroy

    respond_to do |format|
      format.html { redirect_to typeusers_url }
      format.json { head :no_content }
    end
  end
end
