class RemoveAndReplaceTypeFromSurveys < ActiveRecord::Migration
  def change
    remove_column :surveys, :type 
    add_column :surveys, :style, :integer
  end
end
