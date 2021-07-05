# frozen_string_literal: true

class Comment < ApplicationRecord
  # mount_base64_uploader :file, ImageUploader

  belongs_to :task

  validates :text, presence: true
  validates :text, length: { in: 10..256 }
  # validates :file, file_size: { less_than_or_equal_to: 5.megabytes }
end
