class digitalpedagogikksController < ApplicationController


  def index
    @digital = Article.digital
    render :layout => 'digital_page'
  end


  def show
    @digital = Article.find(params[:id])
    render :layout => 'digital_page'
  end

end
