class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :url, presence: true, length: { within: 1..128 }
  validates :user_id, presence: true
end
