class User < ApplicationRecord
  # N - 1 association with cities table
  belongs_to :city

  # 1 - N association with gossips table
  has_many :gossips

  # 1 - N association with comments table
  has_many :comments

  # The bcrypt gem will hash the
  has_secure_password

  validates :first_name,
  presence: true

  validates :last_name,
  presence: true

  validates :email,
  presence: true

  validates :city_id,
  presence: true

  validates :password,
  presence: true

end
