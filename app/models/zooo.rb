class Zooo < ApplicationRecord
  has_many :animals, dependent: :destroy
  validates :name, :city, :zipcode, presence: true
end
