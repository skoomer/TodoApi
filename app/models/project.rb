# frozen_string_literal: true

class Project < ApplicationRecord
  has_many :tasks, -> { order(position: :asc) }, dependent: :destroy

  belongs_to :user

  validates :name, presence: true
  validates :name, uniqueness: { scope: :user }
end
