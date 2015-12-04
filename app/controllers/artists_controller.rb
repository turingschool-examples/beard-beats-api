class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show]

  def index
    @artists = Artist.all
    respond_with(@artists)
  end

  def show
    respond_with(@artist)
  end

  private
    def set_artist
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params[:artist]
    end
end
