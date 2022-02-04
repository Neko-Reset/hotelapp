class RoomsHotel < ApplicationRecord
  belongs_to :room
  belongs_to :hotel
end
