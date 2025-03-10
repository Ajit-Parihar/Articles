class ArticlesController < ApplicationController
  #before_action :set_article, only: [:edit, :update, :show, :destroy]
  def index
    @articles = Article.all
  end


  def show
    @article = Article.find(params[:id])
  end

  def create 

  puts params[:article]
  puts current_user[:id].inspect
    
    if current_user.articles.create(article_params)  
         flash[:notice] = "article created"
         redirect_to ownArticle_path
    end
end

def update

  @article = Article.find(params[:id])
  if @article.update(article_params)
    redirect_to ownArticle_path, notice: "Article updated successfully"
  else
    render :edit
  end
end

private

def article_params
  params.require(:article).permit(:title, :body)
end
end
