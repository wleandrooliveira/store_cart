class Product < ApplicationRecord
    has_many :line_items
    before_destroy :ensure_not_referenced_by_any_line_item

    validates :title, :description, :price_unit, :quantity, presence: true
    validates :price_unit, numericality: {greater_than_or_equal_to: 0.01}

    private

    def ensure_not_referenced_by_any_line_item
        unless line_items.empty?
            erros.add(:base, 'Line Items present')
            throw :abort
        end
    end
end
