class HmsController < ApplicationController


  def index
    @illustrasjoner = Article.illustrasjon
    render :layout => 'hms_page'
  end


  def show
    @illustrasjon = Article.find(params[:id])
    render :layout => 'hms_page'
  end

end
