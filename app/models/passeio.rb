class Passeio < ApplicationRecord
  belongs_to :Voluntario
  belongs_to :Animal
end
