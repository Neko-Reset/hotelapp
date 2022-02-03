class Room < ApplicationRecord
  has_one_attached :image
  has_many :hotels
  # Room.joins(:hotel)
  # SELECT `rooms`.* FROM `rooms` INNER JOIN `hotels` ON `hotels`.`room_id` = `rooms`.`id`
end
