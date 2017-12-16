class Stock < ApplicationRecord
    def self.search(term)
        if term
          where('name LIKE ? OR kind LIKE ?', "%#{term}%","%#{term}%").order('id DESC')
        else
          order('id DESC') 
        end
      end
      
end
