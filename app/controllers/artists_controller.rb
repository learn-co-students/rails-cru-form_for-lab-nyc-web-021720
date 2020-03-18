class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
        redirect_to artists_path
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        artist = Artist.find(params[:id])
        artist.update(name: params[:artist][:name], bio: params[:artist][:bio])
        redirect_to artists_path
    end

    def destroy
        artist = Artist.find(params[:id])
        artist.delete
        redirect_to artists_path
    end
end
