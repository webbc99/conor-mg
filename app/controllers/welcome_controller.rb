class WelcomeController < ApplicationController
  def home
    @article = Article.last
    @user = current_user
  end

  def download_cv
    send_file(
      "#{Rails.root}/public/conor_mg_cv.docx",
      filename: "conor_mg_cv.docx",
      type: "application/docx"
      )
  end
end
