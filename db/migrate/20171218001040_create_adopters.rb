class CreateAdopters < ActiveRecord::Migration[5.1]
  def change
    create_table :adopters do |t|
      t.string :name
      t.string :email
      t.integer :telephone
      t.string :animal

      t.timestamps
    end
  end
end
