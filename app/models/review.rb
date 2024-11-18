class Review < ApplicationRecord
  belongs_to :user
  belongs_to :toilet

  validates :content, presence: true
end
