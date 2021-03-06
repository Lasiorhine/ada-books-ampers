class BooksController < ApplicationController


  def index
    @books = Book.all
  end

  def show
    id = params[:id]
    @book = Book.find(id)
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new
    book.title = params[:book][:title]
    book.author = params[:book][:author]
    book.description = params[:book][:description]

    if book.save #it worked
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    id = params[:id]
    @book = Book.find(id)
    @book.destroy
  end
end
