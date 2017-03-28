class Zooo < ApplicationRecord
  belongs_to :organization
  has_many :animals, dependent: :destroy
  validates :name, :city, :zipcode, presence: true
end
