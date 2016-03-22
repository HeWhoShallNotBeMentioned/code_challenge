class CreateDealADay < ActiveRecord::Migration
  def change
    create_table :deal_a_days do |t|
      t.column :purchaser_name, :string
      t.column :item_description, :string
      t.column :item_price, :float
      t.column :purchase_count, :integer
      t.column :merchant_address, :string
      t.column :merchant_name, :string

      t.timestamps
    end
  end
end
