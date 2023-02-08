class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    user = current_user
    book.user_id = user.id
    book.save
    redirect_to book_path(book.id)
  end

  def index
    @user = current_user
    @users = User.all
    @books = Book.all
  end

  def show
    @user = current_user
    @book = Book.find(params[:id])
  end

  def edit
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
