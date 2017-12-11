class Volunteer < ApplicationRecord
  validates :name, :function, :motivation_text, presence: true
  
  enum function: [ :Geral, :Gestor ]
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  def active_for_authentication? 
    super && approved? 
  end 
  
  def inactive_message 
    if !approved? 
      :not_approved 
    else 
      super
    end 
  end
end
