class ExperimentalScheduling < ApplicationRecord
  belongs_to :volunteer
  belongs_to :animal
  
  validates :date_time, presence: true
end
