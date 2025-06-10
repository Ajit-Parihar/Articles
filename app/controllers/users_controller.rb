class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def for_testing
    end

  def for_another_testing
  end

  def for_testing_add_another_function
  end

  def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
         send_welcome_email(@user)
        redirect_to articles_path notice: "new user create"
      else
        render :new
      end
  end

  def send_welcome_email (user)
    UserMailer.welcome_email(user).deliver
  end

  private
  def user_params
      params.require(:user).permit(:id, :first_name, :Last_name, :email, :profileImage, :password, :password_confirmation)
  end
end
