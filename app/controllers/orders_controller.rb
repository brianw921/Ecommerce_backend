class OrdersController < ApplicationController

    def index 
        orders = Order.all 
        render json: orders, include: "**"
    end

    def show 
        order = Order.find(params[:id])
        render json: order, include: "**"
    end
end
