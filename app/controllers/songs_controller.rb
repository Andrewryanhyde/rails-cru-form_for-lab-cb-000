class SongsController < ApplicationController
  def create
    @song = Song.new(song_params(:name, :bio))
    @song.save
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name, :bio))
    redirect_to song_path(@song)
  end



  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
