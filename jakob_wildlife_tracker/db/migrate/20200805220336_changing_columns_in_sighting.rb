class ChangingColumnsInSighting < ActiveRecord::Migration[6.0]
  def change
    remove_column :sightings, :integer, type = nil
  end
end
