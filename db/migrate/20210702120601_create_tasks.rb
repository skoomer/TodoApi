# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :completed, default: false
      t.integer :position
      t.datetime :deadline

      t.timestamps
    end
  end
end
