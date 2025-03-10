class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
      @user = User.new(user_params)

      puts @user.inspect

      if @user.save
        redirect_to articles_path notice: "new user create"
      else
        render :new
      end
  end

  private

  def user_params
      params.require(:user).permit(:id, :first_name, :Last_name, :email, :password, :password_confirmation)
  end
end
