class ItemSerializer < ActiveModel::Serializer
  attributes :id, :original_price, :category, :gender, :purchase_limit, :description_headline,
  :description_bullets, :image
end

