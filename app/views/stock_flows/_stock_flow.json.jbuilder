json.extract! stock_flow, :id, :in_out, :time, :name, :amount, :kind, :origin_destiny, :created_at, :updated_at
json.url stock_flow_url(stock_flow, format: :json)
