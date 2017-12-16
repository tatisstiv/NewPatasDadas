class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string :name
      t.float :amount
      t.string :kind

      t.timestamps
    end
  end
end
