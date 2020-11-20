class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :games
  has_many :reviews
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :email, :address, :name, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
