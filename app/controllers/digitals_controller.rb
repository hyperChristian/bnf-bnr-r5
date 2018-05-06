class DigitalsController < ApplicationController


  def index
     @articles = Article.where(:category_id => '6')
    render :layout => 'digital_page'
  end


  def show
    @ped = Article.find(params[:id])
    render :layout => 'digital_page'
  end

end
