class StationsController < ApplicationController
  before_filter :find_route

  def find_route
    if params.has_key? :route_id
      @route = Route.find(params[:route_id])
    end
  end
  # GET /stations
  # GET /stations.json
  def index
    if @route.nil?
      @stations = Station.all
    else
      @stations = @route.stations
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stations }
    end
  end

  def select
    if @route.nil?
      @stations = Station.all
    else
      @stations = @route.stations
    end

    respond_to do |format|
      format.html { render :layout => "mobile" } # select.html.erb
      format.json { render json: @stations }
    end
  end

  def step2
    if @route.nil?
      @stations = Station.all
    else
      @stations = @route.stations
    end
    @from = Station.find(params[:id])

    render :action => "select", :layout => "mobile"
  end

  def to
   if @route.nil?
      @stations = Station.all
    else
      @stations = @route.stations
    end
    @from = Station.find(params[:id])
    @to = Station.find(params[:to_id])

    render :action => "select", :layout => "mobile"
  end

  # GET /stations/1
  # GET /stations/1.json
  def show
    @station = Station.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @station }
    end
  end

  # GET /stations/new
  # GET /stations/new.json
  def new
    @station = Station.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @station }
    end
  end

  # GET /stations/1/edit
  def edit
    @station = Station.find(params[:id])
  end

  # POST /stations
  # POST /stations.json
  def create
    @station = Station.new(params[:station])

    respond_to do |format|
      if @station.save
        format.html { redirect_to @station, notice: 'Station was successfully created.' }
        format.json { render json: @station, status: :created, location: @station }
      else
        format.html { render action: "new" }
        format.json { render json: @station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stations/1
  # PUT /stations/1.json
  def update
    @station = Station.find(params[:id])

    respond_to do |format|
      if @station.update_attributes(params[:station])
        format.html { redirect_to @station, notice: 'Station was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stations/1
  # DELETE /stations/1.json
  def destroy
    @station = Station.find(params[:id])
    @station.destroy

    respond_to do |format|
      format.html { redirect_to stations_url }
      format.json { head :no_content }
    end
  end
end
