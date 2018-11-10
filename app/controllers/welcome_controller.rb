class WelcomeController < ApplicationController
  def home
    @article = Article.last
    @user = current_user
  end

  def download_cv
    send_file(
      "#{Rails.root}/public/puzzle_game_menu.png",
      filename: "puzzle_game_menu.png",
      type: "application/png"
      )
  end
end
