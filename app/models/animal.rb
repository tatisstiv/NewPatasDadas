class Animal < ApplicationRecord
  validates :name, :color, :size, presence: true
end
