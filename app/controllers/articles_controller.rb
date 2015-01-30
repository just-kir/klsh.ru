class ArticlesController < ApplicationController
before_filter :authenticate_user!, :except => [:index]  
def index
  @articles = Article.order("created_at desc")
end

def new
  @article = Article.new  
end

def show
  @article = Article.find(params[:id])
end


def create
  @article = Article.new(article_params)
  @article.save
  if @article.save
    respond_to do |format|
      format.html { redirect_to articles_url }
      format.js
    end
  else
    render :js => "alert('Ошибка записи. Возможно, какое-то из полей пусто.');" 
  end 
end

def edit
  @article = Article.find(params[:id])
end

def update
  @article = Article.find(params[:id])
 
  if @article.update(article_params)
    redirect_to articles_path
  else
    render 'edit'
  end
end

def destroy
  @article = Article.find(params[:id])
  @article.destroy
 
  redirect_to articles_path
end

private
  def article_params
    params.require(:article).permit(:name, :link, :quote)
  end

end
