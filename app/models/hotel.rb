class Hotel < ApplicationRecord
  has_one_attached :image
  belongs_to :room

  def amount_days
    self.total_days = (self.start_day - self.end_day).to_i
  end

  # def amount_price
  #   total_price = room.room_price * self.number.to_i * total_days
  # end
end
