class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.boolean :cart
      t.float :total_price
      t.integer :user_id

      t.timestamps
    end
  end
end
