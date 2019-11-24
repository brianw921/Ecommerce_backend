class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :product_full_name
      t.float :original_price
      t.string :category
      t.string :gender
      t.integer :purchase_limit
      t.string :description_headline
      t.string :description_bullets, array: true, default: []
      t.string :image

      t.timestamps
    end
  end
end
