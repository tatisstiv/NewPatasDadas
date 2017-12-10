class AddMotivationTextToVolunteer < ActiveRecord::Migration[5.1]
  def change
    add_column :volunteers, :motivation_text, :text
  end
end
