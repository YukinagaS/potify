class Toilet < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true # may require more limitations
  validates :address, presence: true
  validates :description, presence: true
end