class TypedocumentsController < ApplicationController
  # GET /typedocuments
  # GET /typedocuments.json
  def index
    @typedocuments = Typedocument.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @typedocuments }
    end
  end

  # GET /typedocuments/1
  # GET /typedocuments/1.json
  def show
    @typedocument = Typedocument.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @typedocument }
    end
  end

  # GET /typedocuments/new
  # GET /typedocuments/new.json
  def new
    @typedocument = Typedocument.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @typedocument }
    end
  end

  # GET /typedocuments/1/edit
  def edit
    @typedocument = Typedocument.find(params[:id])
  end

  # POST /typedocuments
  # POST /typedocuments.json
  def create
    @typedocument = Typedocument.new(params[:typedocument])

    respond_to do |format|
      if @typedocument.save
        format.html { redirect_to @typedocument, notice: 'Typedocument was successfully created.' }
        format.json { render json: @typedocument, status: :created, location: @typedocument }
      else
        format.html { render action: "new" }
        format.json { render json: @typedocument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /typedocuments/1
  # PUT /typedocuments/1.json
  def update
    @typedocument = Typedocument.find(params[:id])

    respond_to do |format|
      if @typedocument.update_attributes(params[:typedocument])
        format.html { redirect_to @typedocument, notice: 'Typedocument was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @typedocument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typedocuments/1
  # DELETE /typedocuments/1.json
  def destroy
    @typedocument = Typedocument.find(params[:id])
    @typedocument.destroy

    respond_to do |format|
      format.html { redirect_to typedocuments_url }
      format.json { head :no_content }
    end
  end
end
