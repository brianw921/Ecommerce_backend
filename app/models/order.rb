class Order < ApplicationRecord
    has_many :order_items
    has_many :items, through: :order_items
    belongs_to :user

    def total_price 
        total_price = 0
        self.items.each do |item|
            total_price += item.original_price
        end
        return total_price
    end

    def datetime
        self.updated_at.to_s.split(" ")[0]
    end
    
end
