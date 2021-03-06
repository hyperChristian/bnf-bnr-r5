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
    @articles = Article.all
    @article = Article.find(params[:id])
    render :layout => 'articles_page'
  end

  def illustrasjoner
    @illustrasjoner = Article.illustrasjon
    render :layout => 'illustration_page'
  end

  def illustrasjon
    @illustrasjon = Article.find(params[:id])
    render :layout => 'illustration_page'
  end

end
