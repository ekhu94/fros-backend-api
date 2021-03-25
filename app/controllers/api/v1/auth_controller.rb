class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        #! login action
        @user = User.find_by(email_address: user_login_params[:email_address])
        if @user && @user.authenticate(user_login_params[:password])
            token = encode_token({ user_id: @user.id })
            render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
        else
            render json: { message: 'Invalid email address or password' }, status: :unauthorized
        end
    end

    private

    def user_login_params
        params.require(:user).permit(:username, :email_address, :password, :password_confirmation)
    end
end
