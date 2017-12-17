class AddHourToFixedScheduling < ActiveRecord::Migration[5.1]
  def change
    add_column :fixed_schedulings, :hour, :datetime
  end
end
