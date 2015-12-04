class AlbumsController < ApplicationController
  include ActionController::ImplicitRender
  before_action :set_album, only: [:show]

  def index
    @albums = Album.all
    respond_with(@albums)
  end

  def show
    respond_with(@album)
  end

  private
    def set_album
      @album = Album.find(params[:id])
    end

    def album_params
      params[:album]
    end
end
