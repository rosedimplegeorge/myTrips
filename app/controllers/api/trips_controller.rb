class Api::TripsController < ApplicationController

    def index
        @trips = Trip.all
        render json: @trips
    end

    def show
        @trip = Trip.find(params[:id])
        render json: @trip
    end

    def destroy
        @rtip = Trip.find(params[:id]).destroy
        render status: 200
    end

    def create
        @trip = Trip.create!(trip_params)
        render json: @trip
    end

    private

    def trip_params
        params.require(:trip).permit(:name,:story)
    end
    
end
