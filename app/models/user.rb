class User < ApplicationRecord
  has_many :posts
  validates :name, presence: true, length: { in: 5..20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { in: 6..20 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: { case_sensitive: false } 
end
