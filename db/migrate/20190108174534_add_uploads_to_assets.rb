class AddUploadsToAssets < ActiveRecord::Migration[5.2]
  def self.up
    add_attachment :assets, :upload
  end

  def self.down
    remove_attachment :assets, :upload
  end
end
