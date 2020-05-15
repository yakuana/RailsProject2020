class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy
    has_many :snacks, through: :line_items 

    def total
        sum = 0
        self.line_items.each do |line_item|
          sum+= line_item.quantity * line_item.snack.price
        end
        return sum
    end
end
