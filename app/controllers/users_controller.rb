class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users, include: "**"
    end

    def show 
        user = User.find(params[:id])
        render json: user, include: "**"
    end

    def create
        user = User.create(user_params)
        if user.valid?
            user.orders.create(cart: true)
            # user.create_new_order
            payload = {user_id: user.id}
            token = JWT.encode(payload, "brian", "HS256")
            render json: {user: UserSerializer.new(user), include: "**", token: token}
        else
            render json: {error: 'failed to create user'}
        end
    end


    private 
    
    def user_params
        params.permit(:username, :password)
    end
end
