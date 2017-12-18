class FixedScheduling < ApplicationRecord
  belongs_to :volunteer
  belongs_to :animal
  
  validates :day_of_week, :hour, presence: true
end
