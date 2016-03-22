class RenameDealADays < ActiveRecord::Migration
  def change
    rename_table :deal_a_days, :deals
  end
end
