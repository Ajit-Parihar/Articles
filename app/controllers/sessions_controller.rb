class SessionsController < ApplicationController
  def new
  end

  def create
      user = User.find_by(email: params[:email])
     
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        flash[:notice] = "Login successfully"
        redirect_to articles_path
      else
         flash[:notice] = "Can't login Successfully"
         render :new
      end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged Out"
    redirect_to articles_path
  end
end
