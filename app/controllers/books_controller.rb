class BooksController < ApplicationController

  BOOKS_LIST = [
    {id: 1, title: "1984", author: "George Orwell", description: "We have always been writing Rails applications."},
    {id: 2, title: "The Attic Pretenders", author: "Ernst Kreuder", description: "Unica Zürn's favorite book.  That's all you need to know."},
    {id: 3, title: "Man of Jasmine", author: "Unica Zürn", description: "There is no life without this book. Seriously, y'all.  This is the decisive mic drop for all European prose."},
    {id: 4, title: "The Hearing Trumpet", author: "Leonora Carrington", description: "A wondrous and life-affirming mess with chickens, a Krofft-esque nursing facility, Sor Juana Inés  de la Cruz, Lapland, and so much more."}
  ]

  def index
    @books = BOOKS_LIST
  end

  def show
    id = params[:id]
    @book = BOOKS_LIST.find do |book|
      book[:id] == id.to_i
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
