# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :authenticate_request, only: %i[sign_in sign_up]

      api :DELETE, '/logout', 'Logout user'
      error code: 401, desc: 'Unauthorized'
      def destroy
        command = AuthenticateUser.call(params[:username], params[:password])

        if @user = User.find_by(username: params[:username])
          # binding.pry 
          command = nil
          session.clear
      
          render json: { message: 'You are successfully logout!' }
          # head(:ok)
        else
          head(:unauthorized)
        end
      end

      def sign_in
        authenticate user_params
      end

      def sign_up
        @user = User.new(user_params)
        if @user.save
          response = { message: 'User created successfully' }
          render json: response, status: :created
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.permit(:username, :password)
      end

      def authenticate(params)

        command = AuthenticateUser.call(params[:username], params[:password])

        if command.success?
          render json: {
            token: command.result,
            message: 'Login Successful'
          }
        else
          render json: { error: command.errors }, status: :unauthorized
        end
      end
    end
  end
end
