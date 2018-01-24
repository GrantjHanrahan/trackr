class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  has_many :workouts

  has_many :activities, through: :workouts

  validates :email, presence: true
end
