class CreateSightings < ActiveRecord::Migration[6.0]
  def change
    create_table :sightings do |t|
      t.string :animal_id
      t.string :integer
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
