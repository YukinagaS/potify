class Toilet < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true # may require more limitations
  validates :address, presence: true
  validates :description, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.nearby_locations(address, radius = 10)
    # location = Geocoder.search(address).first
    # return [] unless location
    # latitude, longitude = location.coordinates
    Toilet.near(address, radius) # Radius is in miles by default
  end
end
