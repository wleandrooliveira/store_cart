json.extract! product, :id, :title, :description, :price_unit, :quantity, :created_at, :updated_at
json.url product_url(product, format: :json)
