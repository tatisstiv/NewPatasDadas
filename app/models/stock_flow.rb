class StockFlow < ApplicationRecord
    after_create :update_stock
    
        def update_stock
          stock = Stock.find_by(name: name)
    
            if stock.present?
            case in_out
            when "Entrada"
                  stock.update(amount: stock.amount + amount)
              when "Saída"
                  stock.update(amount: stock.amount - amount)
                end
    
            else
              Stock.create(name: name, amount: amount, kind: kind)
            end
        end
end
