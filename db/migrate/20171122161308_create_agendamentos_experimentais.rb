class CreateAgendamentosExperimentais < ActiveRecord::Migration[5.1]
  def change
    create_table :agendamentos_experimentais do |t|
      t.belongs_to :Voluntarios, foreign_key: true
      t.belongs_to :Animals, foreign_key: true
      t.date :data
      t.string :timestamps

      t.timestamps
    end
  end
end
