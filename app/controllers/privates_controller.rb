class PrivatesController < ApplicationController


  def index
    @articles = Article.where(:category_id => '11')
    render :layout => 'privacy_page'
  end


  def show
    @privacy = Article.find(params[:id])
    render :layout => 'privacy_page'
  end

end
