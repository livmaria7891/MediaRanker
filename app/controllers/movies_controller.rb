class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def show
    @movie = Movie.find(params[:id].to_i)
  end

  def new
    @movie = Movie.new
  end

  def create
    @params = params
    @movie = Movie.new
    @movie.title = params[:movie][:title]
    @movie.director = params[:movie][:director]
    @movie.description = params[:movie][:description]
    @movie.rank = 0
    @movie.save
    redirect_to action: 'index'
  end

  def edit
    @movie = Movie.find(params[:id].to_i)
  end

  def update
  end

  def upvote
    @movie.rank += 1
  end

  def destroy
    @movie = Movie.find(params[:id].to_i)
    @movie.destroy
  end
end
