class AddFlightsController < ApplicationController
  before_action :set_add_flight, only: [:show, :edit, :update, :destroy]

  # GET /add_flights
  # GET /add_flights.json
  def index
    @add_flights = AddFlight.all
  end

  # GET /add_flights/1
  # GET /add_flights/1.json
  def show
  end

  # GET /add_flights/new
  def new
    @add_flight = AddFlight.new
  end

  # GET /add_flights/1/edit
  def edit
  end

  # POST /add_flights
  # POST /add_flights.json
  def create
    @add_flight = AddFlight.new(add_flight_params)

    respond_to do |format|
      if @add_flight.save
        format.html { redirect_to @add_flight, notice: 'Add flight was successfully created.' }
        format.json { render :show, status: :created, location: @add_flight }
      else
        format.html { render :new }
        format.json { render json: @add_flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_flights/1
  # PATCH/PUT /add_flights/1.json
  def update
    respond_to do |format|
      if @add_flight.update(add_flight_params)
        format.html { redirect_to @add_flight, notice: 'Add flight was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_flight }
      else
        format.html { render :edit }
        format.json { render json: @add_flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_flights/1
  # DELETE /add_flights/1.json
  def destroy
    @add_flight.destroy
    respond_to do |format|
      format.html { redirect_to add_flights_url, notice: 'Add flight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_flight
      @add_flight = AddFlight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_flight_params
      params.require(:add_flight).permit(:departing, :arriving, :departureTime, :arrivalTime)
    end
end
