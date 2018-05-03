class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :fetch_articles

protected
  def fetch_articles
    @articles = Article.all # Gets 10 articles
  end


end
