class WeekDaysController < ApplicationController
  # GET /week_days
  # GET /week_days.json
  def index
    @week_days = WeekDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @week_days }
    end
  end

  # GET /week_days/1
  # GET /week_days/1.json
  def show
    @week_day = WeekDay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @week_day }
    end
  end

  # GET /week_days/new
  # GET /week_days/new.json
  def new
    @week_day = WeekDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @week_day }
    end
  end

  # GET /week_days/1/edit
  def edit
    @week_day = WeekDay.find(params[:id])
  end

  # POST /week_days
  # POST /week_days.json
  def create
    @week_day = WeekDay.new(params[:week_day])

    respond_to do |format|
      if @week_day.save
        format.html { redirect_to @week_day, notice: 'Week day was successfully created.' }
        format.json { render json: @week_day, status: :created, location: @week_day }
      else
        format.html { render action: "new" }
        format.json { render json: @week_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /week_days/1
  # PUT /week_days/1.json
  def update
    @week_day = WeekDay.find(params[:id])

    respond_to do |format|
      if @week_day.update_attributes(params[:week_day])
        format.html { redirect_to @week_day, notice: 'Week day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @week_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /week_days/1
  # DELETE /week_days/1.json
  def destroy
    @week_day = WeekDay.find(params[:id])
    @week_day.destroy

    respond_to do |format|
      format.html { redirect_to week_days_url }
      format.json { head :no_content }
    end
  end
end
