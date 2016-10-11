class AlbumsController < ApplicationController
  def index
    @album  = Album.all
  end

  def show
  end

  def new
    @album = Album.new
  end

  def create
    @params = params
    @album = Album.new
    @album.title = params[:album][:title]
    @album.artist = params[:album][:artist]
    @album.description = params[:album][:description]
    @album.rank = 0
    @album.save
    redirect_to action: 'index'
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
