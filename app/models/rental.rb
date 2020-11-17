class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :game
  accepts_nested_attributes_for :game
  has_many :reviews
  validates :start_date, :end_date, presence: true
end
