class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
    end

    def create
        Song.create(artist_id: params[:artist_id], genre_id: params[:genre_id], name: params[:song][:name])
        redirect_to songs_path
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        song = Song.find(params[:id])
        song.update(artist_id: params[:artist_id], genre_id: params[:genre_id], name: params[:song][:name])
        redirect_to songs_path
    end

    def destroy
        song = Song.find(params[:id])
        song.delete
        redirect_to songs_path
    end
end
