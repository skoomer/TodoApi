# frozen_string_literal: true

class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
  has_many :tasks, serializer: :task
end
