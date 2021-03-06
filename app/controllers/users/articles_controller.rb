class Users::ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = current_user.articles.all
  end

  def show
  end

  def new
    @article = current_user.articles.new
  end

  def create
    @article = current_user.articles.new(article_params)
    if @article.save
      flash[:notice] = "記事を作成しました。"
    else
      flash[:alert] = "記事の作成に失敗しました。"
    end
    redirect_to users_article_url(@article)
  end

  def edit
  end

  def update
    if @article.update_attributes(article_params)
      flash[:notice] = "記事を編集しました。"
    else
      flash[:alert] = "記事の編集に失敗しました。"
    end
    redirect_to users_article_url(@article)
  end

  def destroy
    @article.delete
    flash[:notice] = "記事「#{@article.title}」を削除しました。"
    redirect_to users_articles_url
  end

  # before_action
    
  def set_article
    @article = current_user.articles.find(params[:id])
  end

  private

    def article_params
      params.require(:article).permit(:title, :content, :image, :user_id)
    end

end
