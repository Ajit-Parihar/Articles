class ArticleUploadsController < ApplicationController
  # before_action :set_article, only: [:edit, :update, :show, :destroy]
  def index
  end

  def edit
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:format])
  end

  def ownArticles
     @user = User.find_by(id: current_user.id)
  end

  # def loginForUpload
  # end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Login successfully"
      redirect_to ownArticle_path
    else
       flash[:notice] = "Can't login Successfully"
       render :new
    end
  end

  # def create
  #   @article = Article.new(article_params)
  #   if @article.save
  #     redirect_to @article, notice: 'Article was successfully created.'
  #   else
  #     render :new
  #   end
  # end

  def update
    @article = Article.find(params[:format])
    if @article.update(article_params)
      redirect_to ownArticle_path, notice: "Article updated successfully"
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])

     if @article.destroy

      redirect_to ownArticle_path, notice: "Article Delete successfully"

     end
end

  # private

  def article_params
      params.require(:article).permit(:id, :title, :body)
  end

  # def set_article
  #     @article = Article.find(params[:format])

  #     rescue ActiveRecord::RecordNotFound => error
  #       redirect_to ownArticle_path, notice: error
  # end
end
