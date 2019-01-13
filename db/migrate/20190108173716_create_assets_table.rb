class CreateAssetsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.integer :portfolio_item_id

      t.timestamps
    end
  end
end