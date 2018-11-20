class Product < ApplicationRecord
    validates :title, :description, :price_unit, :quantity, presence: true
    validates :price_unit, numericality: {greater_than_or_equal_to: 0.01}
end
