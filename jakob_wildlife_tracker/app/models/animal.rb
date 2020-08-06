class Animal < ApplicationRecord
    has_many :sightings
    validates :common_name, :latin_name, presence: true
    validates :common_name, :latin_name, uniqueness: true
    validate :no_name_matches

    def no_name_matches
        if common_name == latin_name
            errors.add(:latin_name, "Sorry, the Latin name cannot match the common name")
        end
    end
end