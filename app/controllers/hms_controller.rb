class HmsController < ApplicationController


  def index
    @articles = Article.where(:category_id => '7')
    render :layout => 'hms_page'
  end


  def show
    @hms = Article.find(params[:id])
    render :layout => 'hms_page'
  end

end
