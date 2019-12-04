class OrderSerializer < ActiveModel::Serializer
  attributes :id, :cart, :total_price, :datetime
  has_many :order_items
end
