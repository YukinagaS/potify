class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :toilet

  validates :start_time, presence: true
  validates :end_time, presence: true
  STATUS = ['pending', 'approved', 'declined']
  validates :status, inclusion: { in: STATUS }
end
