class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :breed
      t.string :color
      t.string :size

      t.timestamps
    end
  end
end
