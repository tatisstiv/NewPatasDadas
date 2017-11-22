class CreateAgendamentosFixos < ActiveRecord::Migration[5.1]
  def change
    create_table :agendamentos_fixos do |t|
      t.belongs_to :Voluntarios, foreign_key: true
      t.belongs_to :Animals, foreign_key: true
      t.string :dia_da_semana
      t.string :timestamps

      t.timestamps
    end
  end
end
