require 'rails_helper'

RSpec.describe Animal, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it 'should actually exist' do
    test_animal = Animal.create common_name: "test_animal", latin_name: "test_animalus"
    expect(test_animal).to be_valid
  end

  it 'should actually exist' do
    test_animal = Animal.create common_name: "test_animal", latin_name: "test_animalus", kingdom: "Animal"
    expect(test_animal).to be_valid
  end

  it 'should not pass because of same name' do
    test_animal = Animal.create common_name: "test_animalus", latin_name: "test_animalus", kingdom: "Animal"
    expect(test_animal).to_not be_valid
  end

end

