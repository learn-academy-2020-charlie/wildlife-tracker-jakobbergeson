class DestroyColumnAnimalIdInSighting < ActiveRecord::Migration[6.0]
  def change
    remove_column :sightings, :animal_id, type = String
    add_column :sightings, :animal_id, :integer
  end
end
