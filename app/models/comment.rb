# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :comment, presence: true, length: { in: 5..250 }
end
