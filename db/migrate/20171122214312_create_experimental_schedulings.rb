class CreateExperimentalSchedulings < ActiveRecord::Migration[5.1]
  def change
    create_table :experimental_schedulings do |t|
      t.datetime :date_time
      t.references :volunteer, foreign_key: true
      t.references :animal, foreign_key: true

      t.timestamps
    end
  end
end
