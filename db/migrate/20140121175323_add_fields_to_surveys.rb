class AddFieldsToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :address, :string
    add_column :surveys, :type, :string
    add_column :surveys, :material, :string
    add_column :surveys, :square_feet, :integer
    add_column :surveys, :height, :integer
    add_column :surveys, :heat, :string
    add_column :surveys, :heat_bill, :integer
    add_column :surveys, :electric_bill, :integer


  end
end
