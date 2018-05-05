class DigitalsController < ApplicationController


  def index
    @ped = Article.digital
    render :layout => 'digital_page'
  end


  def show
    @ped = Article.find(params[:id])
    render :layout => 'digital_page'
  end

end
