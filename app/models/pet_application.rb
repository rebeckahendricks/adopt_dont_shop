class PetApplication < ApplicationRecord
  validates :pet_id, presence: true
  validates :application_id, presence: true

  belongs_to :pet
  belongs_to :application

  def self.associate(pet_name, application)
    PetApplication.create!(pet: Pet.find(pet_name), application: application)
  end
end
