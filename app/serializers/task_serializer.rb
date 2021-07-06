# frozen_string_literal: true

class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :completed, :position, :deadline
  has_many :comments, serializer: :comment
end
