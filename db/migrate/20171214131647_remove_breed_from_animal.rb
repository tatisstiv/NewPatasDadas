class RemoveBreedFromAnimal < ActiveRecord::Migration[5.1]
  def change
    remove_column :animals, :breed, :string
  end
end
