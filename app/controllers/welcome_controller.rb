class WelcomeController < ApplicationController
    skip_before_action :authorized, only: [:login]

    def index

    end
end
