class User < ApplicationRecord
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  scope :all_except, ->(user) { where.not(id: user) }
end
