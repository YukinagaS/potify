class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :toilets
  has_many :bookings
  has_many :reviews
  has_one_attached :profile_picture
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

end
