# frozen_string_literal: true

class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :password_digest
end
