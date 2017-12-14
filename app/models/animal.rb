class Animal < ApplicationRecord
  validates :name, :color, :size, presence: true
  
  has_many :experimental_schedulings
end
