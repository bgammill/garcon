module Api
    module V1
        class UserController < ApplicationController
            def index
                @users = User.all
                respond_to do |format|
                    format.json { render json: @users }
                    format.xml { render xml: @users }
                end
            end

            def show
                @user = User.find(params[:id])
                respond_to do |format|
                    format.json { render json: @user }
                    format.xml { render xml: @user }
                end
            end
        end
    end
end