class OrderSerializer < ActiveModel::Serializer
  attributes :id, :cart, :total_price
  has_many :order_items
end
