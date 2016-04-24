class AddSummaryToLocks < ActiveRecord::Migration
  def change
    add_column :locks, :summary, :string
  end
end
