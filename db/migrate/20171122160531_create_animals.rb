class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :nome
      t.string :raca
      t.string :cor
      t.string :tamanho
      t.string :timestamps

      t.timestamps
    end
  end
end
