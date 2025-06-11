class SessionsController < ApplicationController
  def new
  end

  def for_testing_cherry_pick_function
  end

  def for_testing_ad
  end

  def for_testin_add_feauture2_article_branch
  end

  def for_testing6
  end

  def for_another_testing5
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
