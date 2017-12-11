class ChangeFunctionToIntegerInVolunteer < ActiveRecord::Migration[5.1]
  def change
    change_column :volunteers, :function, :integer
  end
end
