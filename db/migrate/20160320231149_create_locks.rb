class CreateLocks < ActiveRecord::Migration
  def change
    create_table :locks do |t|
      t.references :tier, index: true, foreign_key: true
      t.references :region, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
