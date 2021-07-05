# frozen_string_literal: true

class AddProjectReftoTask < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :project, foreign_key: true
  end
end
