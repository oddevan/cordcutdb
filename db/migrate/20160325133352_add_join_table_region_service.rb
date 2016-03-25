class AddJoinTableRegionService < ActiveRecord::Migration
  def change
    create_join_table :regions, :services
  end
end
