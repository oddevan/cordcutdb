class AddJoinTableChannelTier < ActiveRecord::Migration
  def change
    create_join_table :channels, :tiers
  end
end
