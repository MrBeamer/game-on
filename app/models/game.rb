class Game < ApplicationRecord
  include PgSearch::Model
  STATUS = %w(new used)

  belongs_to :user
  has_one :rental
  has_one_attached :photo
  validates :title, :description, :price_per_day, :category, :condition, presence: true
  validates :price_per_day, numericality: { only_integer: true }
  validates :condition, inclusion: { in: STATUS }

  pg_search_scope :search_by_title_and_availability,
    against: [:title, :availability],
    using: {
      tsearch: { prefix: true }
    }
end
