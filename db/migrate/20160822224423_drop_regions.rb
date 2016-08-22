class DropRegions < ActiveRecord::Migration
  def change
    drop_join_table :channels, :locks
    drop_join_table :locks, :regions
    drop_join_table :regions, :services
    drop_join_table :regions, :tiers

    drop_table :locks
    drop_table :regions
  end
end
