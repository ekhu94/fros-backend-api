class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def login
        #! login action
        user = User.find_by(email_address: user_login_params[:email_address])
        if user && user.authenticate(user_login_params[:password])
            token = encode_token({ user_id: user.id })
            render json: { id: user.id, username: user.username, token: token }, status: :accepted
        else
            render json: { message: 'Invalid email address or password' }, status: :unauthorized
        end
    end

    def auto_login
        if current_user
            render json: current_user
        else
            render json: { errors: "No User Logged In" }
        end
    end

    private

    def user_login_params
        params.require(:user).permit(:email_address, :password)
    end
end
