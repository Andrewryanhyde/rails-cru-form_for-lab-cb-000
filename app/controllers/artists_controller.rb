class ArtistsController < ApplicationController

  def create
    @artist = Artist.create(name: params[:name], bio: params[:bio])
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def update
  end

end
