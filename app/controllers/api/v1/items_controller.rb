class Api::V1::ItemsController < ApplicationController

    def create
        item_link = Item.create(item_params)
    end

    private

    def item_params
        params.require(:item).permit(:quantity, :cart_id, :inventory_id)
    end
end
