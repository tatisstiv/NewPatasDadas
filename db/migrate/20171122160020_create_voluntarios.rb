class CreateVoluntarios < ActiveRecord::Migration[5.1]
  def change
    create_table :voluntarios do |t|
      t.string :tipo
      t.string :nome
      t.string :timestamps

      t.timestamps
    end
  end
end
