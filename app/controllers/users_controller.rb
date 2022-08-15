class UsersController < ApplicationController
    def create
        @user = User.new(user_params)

        if @user.save
            render json: {
                user: {
                    username: @user.username
                }
            }

        else
            render json: {
                success: false
            }
        end


private
    def user_params
        params.require{ user: { username: "username", email: "email@email.com", password: "password"} }
    end
end