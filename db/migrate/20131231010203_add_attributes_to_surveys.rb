class AddAttributesToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :name, :string
    add_column :surveys, :desc, :text
    add_column :surveys, :tier_id, :integer
  end
end
