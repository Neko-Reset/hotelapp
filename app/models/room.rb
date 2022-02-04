class Room < ApplicationRecord
  has_one_attached :image
  has_many :hotels
  def self.search(search)
    if search
      Room.where(['room_name LIKE ? OR room_area LIKE ? OR room_memo LIKE ? ', "%#{search}%", "%#{search}%", "%#{search}%"])
		else
      Room.all
		end
	end
end
