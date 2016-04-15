class AddNameToLocks < ActiveRecord::Migration
  def change
    add_column :locks, :name, :string
  end
end
