class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @params = params
    #and why is this here?
    @movie = Movie.new
    @movie.title = params[:movie][:title]
    @movie.director = params[:movie][:director]
    @movie.description = params[:movie][:description]
    @movie.rank = 0
    @movie.save
    # redirect_to action: 'index'
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
