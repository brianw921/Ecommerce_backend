class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :cart
  has_many :orders
end
