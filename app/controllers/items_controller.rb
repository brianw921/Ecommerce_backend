class ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items, exclude: []
    end

    def show 
        item = Item.find(params[:id])
        render json: item
    end

    
end
