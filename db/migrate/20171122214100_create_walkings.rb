class CreateWalkings < ActiveRecord::Migration[5.1]
  def change
    create_table :walkings do |t|
      t.datetime :date
      t.references :volunteer, foreign_key: true
      t.references :animal, foreign_key: true

      t.timestamps
    end
  end
end
