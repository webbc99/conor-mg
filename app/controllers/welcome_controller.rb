class WelcomeController < ApplicationController
  def home
    @article = Article.last
    @user = current_user
  end
end
