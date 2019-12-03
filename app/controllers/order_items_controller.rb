class OrderItemsController < ApplicationController
    def index
        render json: OrderItem.all
    end
    
    def create
        order_item = OrderItem.create(order_item_params)
        render json: order_item.order
    end

    def destroy
        order_item = OrderItem.find(params[:id])
        order_item.destroy 
        
        render json: order_item

    end

    private

    def order_item_params
        params.permit(:order_id, :item_id)
    end

end
