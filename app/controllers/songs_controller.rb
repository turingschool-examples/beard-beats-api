class SongsController < ApplicationController
  before_action :set_song, only: [:show]

  def index
    @songs = Song.all
    respond_with(@songs)
  end

  def show
    respond_with(@song)
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params[:song]
    end
end
