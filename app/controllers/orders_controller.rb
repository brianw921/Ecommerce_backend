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
        
        encoded_token = request.headers['Authorization'].split(' ')[1]
        token = decoded_token = JWT.decode(encoded_token, secret , true, {algorithm: 'HS256'})
        user_id = token[0]['user_id']
        
        cur_user = User.find_by(id: user_id)
        cur_user_orders = cur_user.orders
        cart = cur_user_orders.find_by(cart: true)
        cart.update(cart: false)

        new_cart = Order.create(cart: true, user_id: user_id, datetime: DateTime.now)
        
        # params[:order][:cart].each do |item_in_cart|
        #     item = Item.find(item_in_cart[:id])
        #     orderItems = OrderItem.create(order_id: order[:id], item_id: item.id )
        # end
        
        render json: cur_user, include: "**"
       
    end

 
   private

    # def order_params
    #     params.require(:order).permit(:cart)
    # end
end
