class Animal < ApplicationRecord
  validates :name, :color, :size, presence: true
  
  has_many :experimental_schedulings
  has_many :walkings
  
  def Animal.choices_for_experimental_scheduling
    find_by_sql("
      SELECT animals.*
      FROM animals
      LEFT OUTER JOIN (
        SELECT animal_id
        FROM experimental_schedulings
        WHERE date_time > CURRENT_TIMESTAMP
      )
      AS future_schedulings
      ON future_schedulings.animal_id = animals.id
      GROUP BY animals.id
      ORDER BY COUNT(future_schedulings.animal_id)
    ")
  end
  
  def Animal.ready_for_fixed_scheduling_with(volunteer)
    joins(:walkings).
      where(walkings: { volunteer: volunteer }).
      group(:animals).
      having("COUNT(*) >= 3")
  end
end
