class AddJoinTableLockRegion < ActiveRecord::Migration
  def change
    create_join_table :locks, :regions
  end
end
