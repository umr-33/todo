class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_parmas)
    render :new unless @user.save
    end

  private

  def user_parmas
    params.require(:user).permit(:name, :account_id, :password, :password_confirmation)
  end
end