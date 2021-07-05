# frozen_string_literal: true

class ApplicationController < ActionController::API
  include Pundit
  include ExceptionHandler
  before_action :authenticate_request
  before_action :authenticate
  attr_reader :current_user

  private

  def authenticate
    current_user, decoded_token = Jwt::Authenticator.call(
      headers: request.headers,
      access_token: params[:access_token] # authenticate from header OR params
    )

    @current_user = current_user
    @decoded_token = decoded_token
  end

  def authenticate_request
    command = AuthorizeApiRequest.call(request.headers)

    if command.success?
      @current_user = command.result
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
end
