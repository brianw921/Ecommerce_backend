class AuthController < ApplicationController

    def login 
        user = User.find_by(username: user_params[:username])
        
        if user && user.authenticate(user_params[:password])
            payload = {user_id: user.id}
            token = JWT.encode(payload, secret, "HS256")
            render json: {user: UserSerializer.new(user) , token: token}
        else
            render json: {error: "wrong username or password"}
        end
    end

    def persist
        encoded_token = request.headers['Authorization'].split(' ')[1]
        decoded_token = JWT.decode(encoded_token, secret , true, {algorithm: 'HS256'})
        
        user_id = decoded_token[0]['user_id']
        user = User.find(user_id)
        if user 
            render json: user
        end
    end

    def secret
        ENV["JWT_SECRET_KEY"]
    end

    private

    def user_params
        params.permit(:username, :password)
    end
end
