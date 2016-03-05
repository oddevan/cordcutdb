class CreateTiers < ActiveRecord::Migration
  def change
    create_table :tiers do |t|
      t.references :service, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.decimal :annual_cost, :precision => 7, :scale => 2
      t.references :prereq, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
