class AddAttributesToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :account_number, :integer
    add_column :accounts, :user_id, :integer
    add_column :accounts, :tier_id, :integer
  end
end
