class Game < ApplicationRecord
  STATUS = %w(new used)

  belongs_to :user
  has_one :rental
  has_one_attached :photo
  validates :title, :description, :price_per_day, :category, :condition, presence: true
  validates :price_per_day, numericality: { only_integer: true }
  validates :condition, inclusion: { in: STATUS }
end
