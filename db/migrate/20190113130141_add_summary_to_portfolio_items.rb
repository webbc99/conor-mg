class AddSummaryToPortfolioItems < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolio_items, :summary, :string
  end
end
