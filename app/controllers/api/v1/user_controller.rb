module Api
    module V1
        class UserController < ApplicationController
            def index
                render json: User.all, status: 200
            end
            def show
                render json: User.find(params[:id]), status: 200
            end
        end
    end
end