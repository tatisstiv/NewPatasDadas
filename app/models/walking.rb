class Walking < ApplicationRecord
  belongs_to :volunteer
  belongs_to :animal
  
  validates :date, presence: true
end
