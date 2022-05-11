class Users::ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = Article.where()
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
