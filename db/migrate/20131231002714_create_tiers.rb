class CreateTiers < ActiveRecord::Migration
  def change
    create_table :tiers do |t|
      t.string :name
      t.integer :account_id
      t.timestamps
    end
  end
end
