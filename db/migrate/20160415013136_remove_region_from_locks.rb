class RemoveRegionFromLocks < ActiveRecord::Migration
  def change
    remove_column :locks, :region_id
  end
end
