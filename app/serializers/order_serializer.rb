class OrderSerializer < ActiveModel::Serializer
  attributes :id, :cart
  has_many :order_items
end
