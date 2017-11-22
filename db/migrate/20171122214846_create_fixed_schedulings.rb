class CreateFixedSchedulings < ActiveRecord::Migration[5.1]
  def change
    create_table :fixed_schedulings do |t|
      t.string :day_of_week
      t.references :volunteer, foreign_key: true
      t.references :animal, foreign_key: true

      t.timestamps
    end
  end
end
