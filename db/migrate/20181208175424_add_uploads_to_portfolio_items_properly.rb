class AddUploadsToPortfolioItemsProperly < ActiveRecord::Migration[5.2]
  def self.up
    add_attachment :portfolio_items, :upload
  end

  def self.down
    remove_attachment :portfolio_items, :upload
  end
end
