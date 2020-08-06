require 'rails_helper'

RSpec.describe Sighting, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  # it 'actually exists' do
  #   expect { Sighting.new }.to_not raise_error
  # end

  it 'needs all columns filled' do
    test_animal = Animal.create common_name: "Brown Bear", latin_name: "Bearus Maximus"
    test_sighting = Sighting.create animal_id: test_animal.id, latitude: "test_latitude", longitude: "test_longitude", date: "2020-09-15"
    expect(test_sighting).to be_valid
  end

  it 'should not be valid because of missing column' do
    test_animal = Animal.create common_name: "Blck Bear", latin_name: "Bearus Maximus Aurelius"
    test_sighting = Sighting.create animal_id: test_animal.id, latitude: "test_latitude", longitude: "test_longitude"
    expect(test_sighting).to_not be_valid
  end

  it 'should not be valid because of missing column' do
    test_animal = Animal.create common_name: "Black Bear", latin_name: "Bearus Maximus Aurlius"
    test_sighting = Sighting.create animal_id: test_animal.id, latitude: "test_latitude", date: "2020-09-15"
    expect(test_sighting).to_not be_valid
  end

  
end
