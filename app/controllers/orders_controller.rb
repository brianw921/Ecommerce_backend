class OrdersController < ApplicationController

    def index 
        orders = Order.all 
        render json: orders, include: "**"
    end

    def show 
        order = Order.find(params[:id])
        render json: order, include: "**"
    end

    def create
        
        order = Order.create
        
        params[:order][:cart].each do |item_in_cart|
            item = Item.find(item_in_cart[:id])
            orderItems = OrderItem.create(order_id: order[:id], item_id: item.id )
        end
        render json: order
       
    end
    # orders_param[:products].each do |product_id|
            
    #         product = Product.find(product_id)
    #         # orderProduct = OrderProduct.create(order_id: order.id, product_id: product.id)

    private

    # def order_params
    #     params.require(:order).permit(:cart)
    # end
end
