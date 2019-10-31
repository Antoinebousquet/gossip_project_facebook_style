class Comment < ApplicationRecord
  # N -1 association with gossips and users tables
  belongs_to :gossip
  belongs_to :user
end
