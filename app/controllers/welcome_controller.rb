class WelcomeController < ApplicationController
  def home
    @article = Article.last
  end
end
