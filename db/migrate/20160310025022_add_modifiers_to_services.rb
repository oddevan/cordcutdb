class AddModifiersToServices < ActiveRecord::Migration
  def change
    add_column :services, :on_demand, :boolean
    add_column :services, :live, :boolean
  end
end
