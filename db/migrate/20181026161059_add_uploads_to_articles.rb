class AddUploadsToArticles < ActiveRecord::Migration[5.2]
  def self.up
    add_attachment :articles, :upload
  end

  def self.down
    remove_attachment :articles, :upload
  end
end
