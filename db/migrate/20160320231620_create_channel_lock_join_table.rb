class CreateChannelLockJoinTable < ActiveRecord::Migration
  def change
    create_join_table :channels, :locks
  end
end
