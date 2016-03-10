class AddWebsiteToService < ActiveRecord::Migration
  def change
    add_column :services, :website, :string
    add_column :services, :review, :text
  end
end
