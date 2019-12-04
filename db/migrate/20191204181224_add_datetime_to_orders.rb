class AddDatetimeToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :datetime, :datetime
  end
end
