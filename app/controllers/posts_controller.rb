class PostsController < ApplicationController


  def index
    @categories = Category.where(:categorytype => 2)
    if params[:tag]
      #@posts = Post.filter_by_tags(params[:tag]).page(params[:page]).per(Setting.post_per_page)
      @posts = Post.filter_by_tags(params[:tag])
     # @mytags = "tags!!!"
    elsif

      params[:search].present?
      @posts = Post.matching_title_or_content(params[:search])  
      #render :layout => 'search_page'
     # @posts = Post.published.page(params[:page]).per(Setting.post_per_page)
   # @mytags = "search!!!"
    else
     # @posts = Post.all.order(created_at: :desc).page params[:page]
      @posts = Post.all.where(:publish => true, :showpost => true).order(:id => :asc, ancestry: :desc)
   # @mytags = "index!!!"
    end    
    render :layout => 'list_page'
  end

  def home
    @articles = Article.all      
  end

  def show
    @post = Post.find(params[:id])
    render :layout => 'show_page'
  end

  def search_post
    params[:search].present?
    @posts = Post.matching_title_or_content(params[:search])  
    render :layout => 'list_page'
  end
end
