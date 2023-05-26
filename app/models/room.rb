class Room < ApplicationRecord
  #validate if name length is more than 2
  validates :name, length: { minimum: 2 }
  validates_uniqueness_of :name
  scope :public_rooms, -> { where(is_private: false) }
  after_create_commit { broadcast_append_to "rooms" }
  has_many :messages
end
