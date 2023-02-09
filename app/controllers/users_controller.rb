class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
  end

  def show
    @user = current_user
    @users = User.find(params[:id])
    @book = Book.find(params[:id])
  end

  def edit
  end
end
