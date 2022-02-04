class Hotel < ApplicationRecord
  has_one_attached :image
  belongs_to :room

  attr_accessor :room_price

  def amount_days
    (end_day - start_day).to_i
  end

  def amount_price
    room_price * number * total_days
  end
end
