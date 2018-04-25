class ArticlesController < ApplicationController


  def index
    @categories = Category.where(:categorytype => 1)

    @articles = Article.all.where(:publish => true).order(:id => :asc)
  
   
    render :layout => 'list_page'
  end


  def home
    @articles = Article.all      
  end

  def aktuelt
    @article = Article.find(params[:id])
  end 

  def show
    @article = Article.find(params[:id])
    render :layout => 'articles_page'
  end

end
