class SongsController < ApplicationController

  def new
    @song = Song.new
    @artist = Artist.find(params[:artist_id])
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new(song_params)

    if @song.save
      redirect_to @artist, notice: "Song added"
    else
      render :new
    end
  end

  def destroy
    song = Song.find(params[:id])
    @artist = song.artist
    song.destroy

    redirect_to artist_path(@artist), notice: "Song removed"
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end
end
