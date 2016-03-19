class AddMonthlyCostToTiers < ActiveRecord::Migration
  def change
    add_column :tiers, :monthly_cost, :decimal, :precision => 7, :scale => 2
  end
end
