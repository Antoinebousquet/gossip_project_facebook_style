class User < ApplicationRecord
  # N - 1 association with cities table
  belongs_to :city

  # 1 - N association with gossips table
  has_many :gossips

  # 1 - N association with comments table
  has_many :comments

  # The bcrypt gem will hash the
  has_secure_password
end
