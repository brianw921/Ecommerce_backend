class User < ApplicationRecord
    validates :username, uniqueness: true
    has_secure_password
    has_many :orders
    has_many :order_items, through: :orders

    def cart
        order = self.orders.find_by(cart: true)
        OrderSerializer.new(order)
    end

    def create_new_order
        Order.create(user: self, status: true)
    end


end
