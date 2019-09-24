# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { in: 5..50 }
  validates :body,  presence: true, length: { in: 10..250 }
end
