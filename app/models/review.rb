class Review < ApplicationRecord
  belongs_to :rental
  validates :comment, :rating, presence: true
  validates :rating, :inclusion => { :in => 1..5 }
end
