json.array!(@orders) do |order|
  json.extract! order, :id, :name, :address, :phone, :ship_cost, :total_cost, :discount, :food_id
  json.url order_url(order, format: :json)
end
