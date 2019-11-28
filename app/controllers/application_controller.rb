class ApplicationController < ActionController::API
     def secret
        ENV["JWT_SECRET_KEY"]
    end
end
