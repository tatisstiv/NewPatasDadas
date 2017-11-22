class CreateVolunteers < ActiveRecord::Migration[5.1]
  def change
    create_table :volunteers do |t|
      t.string :function
      t.string :name

      t.timestamps
    end
  end
end
