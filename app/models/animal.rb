class Animal < ApplicationRecord
  belongs_to :zooo
  validates :name, :animal_type, presence: true
end
