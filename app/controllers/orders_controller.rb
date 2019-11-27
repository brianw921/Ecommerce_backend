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
        
        order = Order.create(cart: false)
        
        params[:order][:cart].each do |item_in_cart|
            item = Item.find(item_in_cart[:id])
            orderItems = OrderItem.create(order_id: order[:id], item_id: item.id )
        end
        render json: order
       
    end

 
   private

    # def order_params
    #     params.require(:order).permit(:cart)
    # end
end
