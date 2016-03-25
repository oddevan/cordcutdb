class AddJoinTableRegionTier < ActiveRecord::Migration
  def change
    create_join_table :regions, :tiers
  end
end
