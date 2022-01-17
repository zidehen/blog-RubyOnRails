class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new #instantiates new article but does not save it 
    @article = Article.new 
  end

  def create
    @article = Article.new(article_params)

    if @article.save #saves article
      redirect_to @article #redirect_to: browser makes a new request
    else
      render :new, status: :unprocessable_entity #renders the specified view for current request
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
