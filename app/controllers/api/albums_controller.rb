class Api::AlbumsController < ApplicationController
    
    def index
        @albums = Trip.find(params[:trip_id]).albums
        render json: @albums
    end

    def show
        @album = Album.find(params[:id])
        render json: @album
    end


    def create
        @trip = Trip.find(params[:trip_id])
        @album = Album.create!(album_params)
        render json: @album
    end

    def update
        @trip = Trip.find(params[:trip_id])
        @album = Album.find(params[:id])
        @album.update!(album_params)
        render json: @album
    end

    private 

    def album_params
        params.require(:album).permit(:title, :photo_url, :trip_id)
    end


end
