class IllustrationsController < ApplicationController


  def index
    @illustrasjoner = Article.illustrasjon
    render :layout => 'illustration_page'
  end


  def show
    @illustrasjon = Article.find(params[:id])
    render :layout => 'illustration_page'
  end

end
