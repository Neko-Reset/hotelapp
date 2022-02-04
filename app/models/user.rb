class User < ApplicationRecord
  has_one_attached :image
  has_many :rooms
  has_many :hotels
end
