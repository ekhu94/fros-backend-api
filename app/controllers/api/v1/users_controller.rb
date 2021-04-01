class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :profile]

    def index
        users = User.all
        render json: users
    end

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
        #! sign-up action
        user = User.create(user_params)
        if user.valid?
            token = encode_token({ user_id: user.id })
            render json: { id: user.id, username: user.username, carts: user.carts, jwt: token }, status: :created
        else
            render json: { error: user.errors.full_messages }, status: :not_acceptable
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email_address, :password, :password_confirmation)
    end
end
