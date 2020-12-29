class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, uniqueness: true, length: { within: 4..12 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { within: 6..16 }
end
