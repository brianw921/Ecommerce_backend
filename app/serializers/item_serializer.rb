class ItemSerializer < ActiveModel::Serializer
  attributes :id, :product_full_name, :original_price, :category, :gender, :purchase_limit, :description_headline,
  :description_bullets, :image
end

