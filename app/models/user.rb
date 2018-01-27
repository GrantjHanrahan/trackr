class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  has_many :workouts

  has_many :activities, through: :workouts
  has_many :plans

  validates :email, presence: true
end
