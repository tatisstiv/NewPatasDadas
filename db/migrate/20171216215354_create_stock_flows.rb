class CreateStockFlows < ActiveRecord::Migration[5.1]
  def change
    create_table :stock_flows do |t|
      t.string :in_out
      t.datetime :time
      t.string :name
      t.float :amount
      t.string :kind
      t.string :origin_destiny

      t.timestamps
    end
  end
end
