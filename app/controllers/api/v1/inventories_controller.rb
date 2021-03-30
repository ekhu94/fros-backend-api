class Api::V1::InventoriesController < ApplicationController
    skip_before_action :authorized

    def index
        allItem = Inventory.all
        render json: allItem 
    end

    def show
        item = Inventory.find(params[:id])
        render json: item
    end

#! Back up action for getting gender specific info
    def mens
        mens = Inventory.where(mens == true)
        render json: mens
    end

    def womens
        womens = Inventory.where(mens == false)
        render json: womens
    end
end
