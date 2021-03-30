class Api::V1::CartsController < ApplicationController

    def show
        cart = Cart.find(params[:id])
        render json: cart
    end

    def create
        cart = Cart.create(cart_params)
        render json: cart
    end

    def destroy
        cart = Cart.find(params[:id])
        render json: { message: 'Action Complete' }
    end

    private

    def cart_params
        params.require(:cart).permit(:user_id, :total)
    end
end
