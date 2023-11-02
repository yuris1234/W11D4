class Api::ItemController < ApplicationController
    def create 
        @item = Item.new(item_params)
        if @item.save
            render :show
        else
            render json: @items.errors.full_messages, status: 402
        end
    end


    def index
        @items = Item.all 
        render :index
    end

    def update

    end

    def destroy

    end

    private
    def item_params
        params.require(:item).permit(:name, :price, :happiness, :image_url, :pokemon_id)
    end
end