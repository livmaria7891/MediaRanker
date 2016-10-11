class BooksController < ApplicationController
  def index
    @book = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @params = params
    @book = Book.new
    @book.title = params[:book][:title]
    @book.author = params[:book][:author]
    @book.description = params[:book][:description]
    @book.rank = 0
    @book.save
    redirect_to action: 'index'
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
